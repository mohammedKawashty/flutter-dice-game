import 'package:flutter/material.dart';
import 'package:secoundlec/diceScrean.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myCardScreen(),
  ));
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/flowers'),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'mohamed',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 100,
            child: Divider(
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            color: Colors.white,
            child: Row(
              children: [Icon(Icons.email)],
            ),
          )
        ],
      ));
}
