import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: Scaffold(

              body: SafeArea(
                  child: Center(
                      child: Container(
                          width: 250,
                          height: 200,
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Image( image: AssetImage("assets/google logo.png"),),
                                SizedBox(height: 20,),
                                Text("Google Search Engine", style: TextStyle(fontSize: 20,),)
                              ],
                            ),
                          )
                      )
                  )
              )
          )
      )
  );
}
