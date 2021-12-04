import 'package:flutter/material.dart';

class MyService {
  static final MyService _instance = MyService._internal();
  factory MyService() => _instance;
  MyService._internal();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
}
