//import flutter helper library

import 'package:flutter/material.dart';

import 'package:http/http.dart' show get;

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}
//create a class that will be custom widget

//this class must extend the 'statelessWidget' base class
// class App extends StatelessWidget {

class AppState extends State<App> {
  int counter = 0; //stateful widget
// stateless widget bcz we did not expect it to have to maintain any of its own data
//custom widget, we must define a 'build' method that returns
//the widget that this widget will show

// build==> 1.must call build 2.must return widget 3.accept sigle argument context

  void fetchImage() {
    counter++;
//http request
    get('https://jsonplaceholder.typicode.com/photos/$counter');
  }

  Widget build(context) {
    return MaterialApp(
      // home:  Text('Hi '),

      home: Scaffold(
        body: Text('$counter'), //stateful widget body
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
          // setState(() {
          //   counter += 1;
        ),
        appBar: AppBar(title: Text('Lets see some images!')),
      ),
    );
  }
}
