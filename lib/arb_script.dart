import 'dart:io';

void main(List<String> args) async {
  final dir = Directory(".");
  String outputFilePath = "l10n/app_en.arb";
  final outputFile = File.fromUri(Uri(path: outputFilePath));
  final List<FileSystemEntity> allFiles = dir.listSync(recursive: true);

  for (var file in allFiles) {
    if (file is File) {
      final fileString = file.readAsStringSync();

      final allMatches = findHardCodedStrings(fileString);
      if (allMatches.length >= 1) {
        print(allMatches.elementAt(2).groupCount);
        //

        //get key prefix for String in arb file
        String keyPrefix = generateKeyPrefix(file);

        for (var match in allMatches) {
          if (match.group(0) != null) {
            final matchSplit = match.group(0)!.split(" ");
            String firstTwoSplitWords;
            if (matchSplit.length > 1) {
              firstTwoSplitWords = matchSplit.first + matchSplit[1];
            } else {
              firstTwoSplitWords = matchSplit.first;
            }
            outputFile.writeAsStringSync(keyPrefix + firstTwoSplitWords + ":");
          }
        }
      }
    }
  }
}

String generateKeyPrefix(File file) {
  final uriString = file.uri.toString();
  final fileName = uriString.split("/").last;
  final fileNameSplits = fileName.split("_");
  String firstPart = fileNameSplits.first;
  String secondPart = "";
  if (fileNameSplits.length >= 2) {
    secondPart = fileNameSplits[1];
  }
  return firstPart + "_" + secondPart;
}

List<RegExpMatch> findHardCodedStrings(String inputFileString) {
  RegExp regExp1 = RegExp("\".*?\"");
  RegExp regExp2 = RegExp("\'.*?\'");

  final regMatches1 = regExp1.allMatches(inputFileString);
  final regMatches2 = regExp2.allMatches(inputFileString);
  List<RegExpMatch> allMatches = List.from(regMatches1)..addAll(regMatches2);
  return allMatches;
}
