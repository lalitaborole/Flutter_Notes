//import flutter helper library

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' show get;

import 'models/image_model.dart';

import 'widgets/image_list.dart';

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

  List<ImageModel> images = [];
// build==> 1.must call build 2.must return widget 3.accept sigle argument context

  void fetchImage() async {
    counter++;
//http request
    var response =
        await get('https://jsonplaceholder.typicode.com/photos/$counter');

    var imageModel = ImageModel.formJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  Widget build(context) {
    return MaterialApp(
      // home:  Text('Hi '),

      home: Scaffold(
        // body: Text('$counter'), //stateful widget body
        body: ImageList(),
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
