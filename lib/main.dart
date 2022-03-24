import 'package:calculator/screens/menu.dart';
import 'package:flutter/material.dart';

void main()=> runApp( MyApp() );

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Calculator"),
          ),

          body: Menu()
      ),
    );
  }
}
