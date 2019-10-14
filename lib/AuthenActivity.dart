import 'package:flutter/material.dart';
import 'homescreenactivity.dart';

class AuthenActivity extends StatefulWidget {
  @override
  _AuthenActivityState createState() => _AuthenActivityState();
}

class _AuthenActivityState extends State<AuthenActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Text("Registration"),
          titleSpacing: 3,
          centerTitle: true,
        ),
        body: Theme(
          data: ThemeData(
              accentColor: Colors.redAccent,
              brightness: Brightness.light,
              cardTheme: CardTheme(
                  color: Colors.white70,
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  clipBehavior: Clip.hardEdge,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))))),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Username",
                    style: TextStyle(color: Colors.red[700], fontSize: 22),
                  ),
                  subtitle: TextField(
                    cursorColor: Colors.white,
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "Enter your username",
                        labelStyle: TextStyle(
                          fontSize: 22,
                          color: Colors.red,
                        )),
                  ),
                ),
              ),
              Card(
//              color: Colors.black12,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Name",
                    style: TextStyle(color: Colors.red[700], fontSize: 22),
                  ),
                  subtitle: TextField(
                    cursorColor: Colors.white,
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "Enter your name",
                        labelStyle: TextStyle(
                          fontSize: 22,
                          color: Colors.red,
                        )),
                  ),
                ),
              ),
              Card(
//              color: Colors.black12,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Password",
                    style: TextStyle(color: Colors.red[700], fontSize: 22),
                  ),
                  subtitle: TextField(
                    cursorColor: Colors.white,
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "Enter your Password",
                        labelStyle: TextStyle(
                          fontSize: 22,
                          color: Colors.red,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                SizedBox(width: 20,),
                  RaisedButton(
                    splashColor: Colors.cyanAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Text("Register"),
                    onPressed: () {
                      Navigator.pushReplacement(
                          (context),
                          MaterialPageRoute(
                              builder: (context) => HomeScreenActivity()));
                    },
                  ),
                  SizedBox(width: 20,)
                ],
              )
            ],
          ),
        ));
  }
}
