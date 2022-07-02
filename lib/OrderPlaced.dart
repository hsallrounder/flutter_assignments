// @dart=2.9
import 'package:flutter/material.dart';

class Order_Placed extends StatefulWidget {
  const Order_Placed({Key key}) : super(key: key);

  @override
  State<Order_Placed> createState() => _Order_PlacedState();
}

class _Order_PlacedState extends State<Order_Placed> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage("assets/green-check-icon.jpg"),
                    width: 100,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Order Placed",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.pushNamed(context, 'Home');
                    });
                  },
                  child: Text("Place Another Order"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
