import 'main.dart';
import 'mainDrawer.dart';
import 'package:flutter/material.dart';
import 'FirstPage.dart';
import 'TwoLevel.dart';

void main() => runApp(MyContact());

class MyContact extends StatelessWidget {
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
          'Contact Us',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Flutter Developer.",
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 40.0),
            Image.asset(
              'images/rebzz.jpeg',
              height: 300.0,
              width: 300,
            ),
            Text(
              'I am Areeba Saleem',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black),
            ),
            SizedBox(height: 30.0),
            Text(
              "Registration No : SP17-BCS-093",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RaisedButton(
                onPressed: HomeScreen,
                color: Colors.red,
                child: Text('Go Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void HomeScreen() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyLevel()));
    });
  }
}
