import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text(
        "Pizzas😋!",
        style: TextStyle(
            color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Color.fromARGB(255, 245, 141, 34),
      centerTitle: true,
    ),
    body: SafeArea(
      child: ListView(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromARGB(255, 245, 207, 168),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 100,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image(
                        image: AssetImage("assets/Four Cheese Pizza.png"),
                        width: 100,
                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Four Cheese Pizza",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromARGB(255, 245, 207, 168),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 100,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image(
                        image: AssetImage("assets/Pizza Margherita.png"),
                        width: 100,
                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Pizza Margherita",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromARGB(255, 245, 207, 168),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 100,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image(
                        image: AssetImage("assets/Pizza Vegetariana.png"),
                        width: 100,
                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Pizza Vegetariana",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromARGB(255, 245, 207, 168),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 100,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image(
                        image: AssetImage("assets/Pizza Hawaiian.png"),
                        width: 100,
                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Pizza Hawaiian",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromARGB(255, 245, 207, 168),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 100,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image(
                        image: AssetImage("assets/Neapolitan Pizza.png"),
                        width: 100,
                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Neapolitan Pizza",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromARGB(255, 245, 207, 168),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 100,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image(
                        image: AssetImage("assets/Pizza Capricciosav.png"),
                        width: 100,
                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Pizza Capricciosav",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromARGB(255, 245, 207, 168),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 100,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image(
                        image: AssetImage("assets/Pizza Diablo.png"),
                        width: 100,
                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Pizza Diablo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromARGB(255, 245, 207, 168),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 100,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image(
                        image: AssetImage("assets/Four Seasons Pizza.png"),
                        width: 100,
                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Four Seasons Pizza",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromARGB(255, 245, 207, 168),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 100,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image(
                        image: AssetImage("assets/Pizza Sicilian.png"),
                        width: 100,
                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Pizza Sicilian",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromARGB(255, 245, 207, 168),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    height: 100,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image(
                        image: AssetImage("assets/Seafood Pizza.png"),
                        width: 100,
                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Seafood Pizza",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    ),
  )));
}
