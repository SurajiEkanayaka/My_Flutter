import 'package:flutter/material.dart';

Color _color=Colors.lightBlue;
bool _send=false;
AnimationController _animationController=_animationController;



void main() {
  runApp(MaterialApp(
    home: Scaffold(

      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children:<Widget> [
          Center(
            child: GestureDetector(
              onTap: (){
                _animationController.forward();

              },
              child: AnimatedContainer(
                duration: Duration(microseconds: 400),
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    color:_color,
                    borderRadius:BorderRadius.circular(100)

                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget> [
                    Icon(Icons.send),
                    SizedBox(width: 10.0,),
                    Text('Send'),
                    _send?Icon(Icons.done):Container(),
                    _send?SizedBox(width: 10.0):Container(),
                    _send?Text('Done'):Container(),
                  ],
                ),
              ),
            ),
          ),

        ],


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text('Click'),
      ),

    ),
  ));

}




