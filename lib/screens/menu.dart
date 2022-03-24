
import 'package:calculator/screens/add.dart';
import 'package:calculator/screens/divide.dart';
import 'package:calculator/screens/multiply.dart';
import 'package:calculator/screens/subtract.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            SizedBox(
              height: 60,
              width: double.infinity,

              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.amber)
                          )),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.indigo
                      )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Add() ));
                  },
                  child: Text("Add",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  )),
            ),
            SizedBox(height: 20.0,),
            SizedBox(
              height: 60,
              width: double.infinity,

              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.amber)
                          )),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.indigo
                      )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Subtract() ));
                  },
                  child: Text("Subtract",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  )),
            ),
            SizedBox(height: 20.0,),
            SizedBox(
              height: 60,
              width: double.infinity,

              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.amber)
                          )),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.indigo
                      )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Multiply() ));
                  },
                  child: Text("Multiply",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  )),
            ),
            SizedBox(height: 20.0,),
            SizedBox(
              height: 60,
              width: double.infinity,

              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.amber)
                          )),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.indigo
                      )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Divide() ));
                  },
                  child: Text("Divide",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  )),
            ),

          ],
        ),
      ),
    );
  }
}