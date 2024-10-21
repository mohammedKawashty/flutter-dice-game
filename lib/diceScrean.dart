
import 'package:flutter/material.dart';
import 'dart:math';

class myCardScreen extends StatefulWidget {
  @override
  State<myCardScreen> createState() {
    return myCardScreenState();
  }
}
class myCardScreenState extends State<myCardScreen>{
  int leftside=1;
  int rightside=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white54,
          titleTextStyle: TextStyle(color: Colors.black),
          title: Text('Dice game'),
        ),
        body: Row(
            children: [
        Expanded(
        child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(child: Image.asset('assets/images/dice$leftside.png'),
        onTap: (){
          setState(() {
            rightside=Random().nextInt(6)+1;
            leftside=Random().nextInt(6)+1;

          });

        },)

    ),
    ),

              Expanded(
                child:Padding(
                    padding: const EdgeInsets.all(8.0),



                    child: InkWell(child: Image.asset('assets/images/dice$rightside.png'),
                      onTap: (){
                      setState(() {
                        rightside=Random().nextInt(6)+1;
                        leftside=Random().nextInt(6)+1;

                      });

                      print('left side $leftside');
                      },)

                ),
              ),

    ],
    ),


    );
    }

}