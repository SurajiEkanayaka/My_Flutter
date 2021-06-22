import 'package:firebase_connect/pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Connect',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LoadingPage(),
    );
  }
}

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Loading",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
