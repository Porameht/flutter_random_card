import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int card = 1;

  void randomCard(){
    int newCard = Random().nextInt(51) + 1;
    setState( () => card = newCard);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Random card"),
          centerTitle: true,
          elevation: 5.0,
          backgroundColor: Colors.orange,
          // leading: Icon(Icons.arrow_drop_down_circle),
          // actions: [
          //   Icon(Icons.add_box),
          //   SizedBox(width: 5,),
          //   Icon(Icons.ac_unit)
          // ],
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [

            Expanded(
              child: Container(
                padding: const EdgeInsets.all(75.0),
                child: Image.asset("assets/card/$card.png"),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: FlatButton(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                padding: const EdgeInsets.all(30.0),
                onPressed: randomCard,
                color: Colors.lightBlue,
                child: const Text(
                    "PRESS TO RANDOM",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,

                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

// save
// mac // command + s
