import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: Scaffold(

              appBar: AppBar(
                title: Text("Himanshu Sharma"),
                backgroundColor: Color.fromARGB(255, 255, 128, 64),
                centerTitle: true,
              ),

              body: Center(
                child: Text(
                  "Hello, I am Himanshu Sharma",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 24),
                ),
              )
          )
      )
  );
}
