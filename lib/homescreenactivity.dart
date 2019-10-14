import 'package:flutter/material.dart';

class HomeScreenActivity extends StatefulWidget {
  @override
  _HomeScreenActivityState createState() => _HomeScreenActivityState();
}

class _HomeScreenActivityState extends State<HomeScreenActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Theme(
      data: ThemeData(
        cardTheme: CardTheme(
            margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
            color: Colors.white70,
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                side: BorderSide(color: Colors.purple, width: 2))),
        primaryColor: Colors.deepPurple,
      ),
      child: NestedScrollView(

        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: Text(
                "welcome aboard",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          )
          ];
        },
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 120,
              child: Row(
                children: <Widget>[
                  Icon(Icons.android),
                  Icon(Icons.android),
                  Icon(Icons.android)
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.chevron_right),
                title: Text(
                  "Workshops",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.chevron_right),
                title: Text(
                  "Events",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Card(
//

              child: Builder(
                builder: (context) => InkWell(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  splashColor: Colors.deepPurple,
                  onTap: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("This will be worked upon"),
                      duration: Duration(
                        seconds: 3,
                      ),
                    ));
                  },
                  child: ListTile(
                    leading: Icon(Icons.chevron_right),
                    title: Text(
                      "Informals",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
