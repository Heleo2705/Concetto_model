import 'package:flutter/material.dart';
import 'AuthenActivity.dart';
import 'package:animated_splash/animated_splash.dart';

class ConcettoStart extends StatefulWidget {
  @override
  _ConcettoStartState createState() => _ConcettoStartState();
}

class _ConcettoStartState extends State<ConcettoStart> {
  void load() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          (context), MaterialPageRoute(builder: (context) => AuthenActivity()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    load();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(image: AssetImage('assets/logo.png'))),
            ),
          ],
        ),
      ),
    );
  }
}
