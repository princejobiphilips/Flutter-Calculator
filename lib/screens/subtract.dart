import 'package:calculator/screens/menu.dart';
import 'package:flutter/material.dart';

class Subtract extends StatefulWidget {
  @override
  _SubtractState createState() => _SubtractState();
}

class _SubtractState extends State<Subtract> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  int _sub=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Subtract"),
          ),

          body:
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  TextField(
                    controller: num1,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.numbers),
                        labelText: "Num 1",
                        hintText: "Num 1",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: num2,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.numbers),
                        labelText: "Num 2",
                        hintText: "Num 2",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
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
                          var getnum1 = int.parse(num1.text);
                          var getnum2 = int.parse(num2.text);

                          setState(() {
                            _sub=getnum1-getnum2;
                          });

                          print(_sub);
                        },
                        child: Text("Subtract",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),
                        )),
                  ),
                  SizedBox(height: 5.0,),
                  Text(_sub.toString(),style: TextStyle(fontSize: 20),),

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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu() ));
                        },
                        child: Text("Back to Menu ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),
                        )),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
