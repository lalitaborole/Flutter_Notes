// import a helper library from flutter to get content on the screen
import 'package:flutter/material.dart';

import 'src/app.dart';
// //main function to run app
// void main() {
// //create a new text widget to show text on the screen
//   var app = MaterialApp(
//       // home: Text('Hi '),

//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             print('hii');
//           },
//         ),
//         appBar: AppBar(title: Text('Lets see some images!')),
//       ),
//     );
//       //creating the instance of the dart class or call a widget that creates a material app widget

//       //here we pass in a named parameter of home, the name parameter of home is used as the default route or the default widget to show on the screen
// //take that widget and get it on the screen
//       runApp(app);
// }
void main() {
  runApp(App());
}
