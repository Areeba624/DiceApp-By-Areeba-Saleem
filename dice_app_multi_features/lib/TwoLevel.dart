import 'dart:math';
import 'package:diceeapp/FirstPage.dart';
import 'package:diceeapp/HardLevel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'mainDrawer.dart';

void main() => runApp(MyLevel());

class MyLevel extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Navigation Bar',
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "GAME LEVELS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 38.0,
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(50),
                      child: RaisedButton(
                        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                        child: Text(
                          'SIMPLE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: RaisedButton(
                        padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                        child: Text(
                          'HARD',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeLevel1() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
    });
  }

  void changeLevel2() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HardLevel()));
    });
  }

  void HomeScreen() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SplashScreen()));
    });
  }
}
