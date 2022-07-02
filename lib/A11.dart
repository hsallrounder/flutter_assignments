import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: Scaffold(

              body: SafeArea(
                child: Center(
                  child: Container(
                      color: Colors.green,
                      width: 350,
                      height: 350,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Flutter",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)
                        ),
                      ),
                    )
                  )
                )
              )
          )
      )
  );
}
