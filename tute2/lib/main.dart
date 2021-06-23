import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => new _MyAppState();
}


class _MyAppState extends State<MyApp> with TickerProviderStateMixin{
  Color _color = Colors.lightBlue;
  bool _send = false;
  bool _show=true;
  late AnimationController _animationController ;


@override
  void iniState(){
  super.initState();
  _animationController= AnimationController(
  vsync:this,
  duration: Duration(milliseconds: 1400));
  _animationController.addListener(() {
   setState(() {
     _show=false;
   });

  });
  }



  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text('my first app'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Center(
              child: GestureDetector(
                onTap: () {
                  _animationController.forward();
                },
                  child:  AnimatedContainer(
                    duration: Duration(microseconds: 400),
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        color: _color,
                        borderRadius: BorderRadius.circular(100)

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.send),
                        _show ? SizedBox(width: 10.0) : Container(),
                        _show ? Text('Send') : Container(),
                        _send ? Icon(Icons.done) : Container(),
                        _send ? SizedBox(width: 10.0) : Container(),
                        _send ? Text('Done') : Container(),
                      ],
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







