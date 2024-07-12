import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';


void main() {
  runApp( const diceApp());
}

class diceApp extends StatefulWidget {
  const diceApp({super.key});

  @override
  State<diceApp> createState() => _diceAppState();
}

class _diceAppState extends State<diceApp> {
   int RightDice=1;
   int LeftDice=1 ;
   void change()
   {
      setState(() {
                            RightDice=Random().nextInt(6)+1;  
                            LeftDice=Random().nextInt(6)+1;
                            print('dicenumber = $LeftDice');    
                            });
   }
  @override
  
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: 
      SafeArea(
        child: Scaffold(
          backgroundColor:Colors.red,
          appBar: AppBar(
            title: const Text('Dice_APP',
            style:TextStyle(
              color:Colors.white
            ),),
            backgroundColor: Colors.red.shade900,
            
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextButton(
                          onPressed: () { 
                            change();
                           },
                          child: Image( image:  AssetImage('images/dice$LeftDice.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(onPressed: () { 
                            change();
                         },
                        child: Image.asset('images/dice$RightDice.png')),
                        ),
                      
                    ],
                  ),
                ),
              ],
              ),
          ),
        ),
      ),
    );
  }
  }
