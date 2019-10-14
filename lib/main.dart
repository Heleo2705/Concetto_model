import 'package:flutter/material.dart';
import 'homescreenactivity.dart';
import 'concetto_start.dart';
import 'loadingscreen.dart';
import 'AuthenActivity.dart';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
    '/': (context) => ConcettoStart(),
    '/auth': (context) => AuthenActivity(),
    '/home': (context) => HomeScreenActivity(),
    '/load': (context) => LoadingScreen(),
  }));
}
