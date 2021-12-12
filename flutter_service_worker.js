'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/assets/dart.png": "3bedf36e2025a39f4c6d74b44d89ae47",
"assets/assets/github.png": "472739dfb5857b1f659f4c4c6b4568d0",
"assets/assets/flutter.png": "e26be131ba0a55da6b461a3d36750572",
"assets/assets/fish_finder_5.png": "39ea08ee8066e71b02ede9e5a2381b47",
"assets/assets/fishing_exam_2.png": "2cfc26e44a35ea7334e09e20a066f302",
"assets/assets/profile_picture.jpeg": "14fcc08368a69b31b7044c553e41fadb",
"assets/assets/raspy_radio.png": "f7ee02ec10490a5e13e80db61dbf15c7",
"assets/assets/java.png": "0684bf15783118f9adaa52a84a7fce1c",
"assets/assets/fish_finder_4.png": "c1f361d4ed310ddc7c9a866e71e9764c",
"assets/assets/rasperry_pi.png": "6382bd58f19d31efa68a9fcd4388bae6",
"assets/assets/fonts/Dosis-VariableFont_wght.ttf": "ab8cfacc57bad648fadac5f0ff0e39de",
"assets/assets/fonts/ConcertOne-Regular.ttf": "1b40f0186d1a8b1500b4676b2e9a7ba1",
"assets/assets/fonts/Overpass-VariableFont_wght.ttf": "676ed13694f673c4bc372d7e4b8ed7fd",
"assets/assets/fish_finder_1.png": "b0a0fc600f813ba2216971bf07771b94",
"assets/assets/git.png": "593df29f7efd8dc56c1fb17e0baa1c1b",
"assets/assets/fishing_exam_1.png": "97756a9f61104c07b051cb9926811537",
"assets/assets/google_play.png": "a3177372eb221da22db18590a7a93d0b",
"assets/assets/fishing_exam_4.png": "472ab3b52a6aae41e83f9145cd23a572",
"assets/assets/fishing_exam_5.png": "eb93fb73583dae6377761c775389600f",
"assets/assets/fishing_exam_3.png": "eb343ec0a7363cd2dfb350f249f27539",
"assets/assets/python.png": "dbe34c3ef32fa5419ffea560948b9149",
"assets/assets/fish_finder_3.png": "0952c55b3c1d4cfb320046b5e54bf722",
"assets/assets/zivi_counter.png": "8ec795585415f9d9825ff46af87150d8",
"assets/assets/firebase.png": "a3d73b296e3e92b0893abdb7bc7a1868",
"assets/assets/fish_finder_2.png": "78901ff6db15954fe8dc0968bfc7c16f",
"assets/assets/programming_computer.gif": "f11de19df68d2ef24faa4a47fbb578dc",
"assets/FontManifest.json": "43bd16e570cc7caab276452c4a6e5d25",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "ede43216ab716b1089e70b57defc63e1",
"assets/AssetManifest.json": "4afb4b9dff272004e5030ad6d57aa0ab",
"manifest.json": "712de6fd843d0a22566036905b83e212",
"version.json": "94c396ef1fb46b1883ca1bdcd87cc1dd",
"index.html": "9db614155ddcbb2f40b1eb5a1230bdf2",
"/": "9db614155ddcbb2f40b1eb5a1230bdf2",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "02b7094762359cf88d1c64f03ad4b240"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
