//import flutter helper library

import 'package:flutter/material.dart';

//create a class that will be custom widget

//this class must extend the 'statelessWidget' base class
class App extends StatelessWidget {
  //int counter = 0; stateful widget

//must define a 'build' method that returns
//the widget that this widget will show
  Widget build(context) {
    return MaterialApp(
      // home: Text('Hi '),

      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('hii');
          },
        ),
        appBar: AppBar(title: Text('Lets see some images!')),
      ),
    );
  }
}
