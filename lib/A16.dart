// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_assignments/OrderPlaced.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
      MaterialApp(
        home: PizzaApp(),
        routes: {
          'Order Success': (context) => Order_Placed(),
          'Home': (context) => PizzaApp(),
        },
      )
  );
}

class PizzaApp extends StatefulWidget {
  const PizzaApp({Key key}) : super(key: key);

  @override
  State<PizzaApp> createState() => _PizzaAppState();
}

class _PizzaAppState extends State<PizzaApp> {
  DateTime today = DateTime.now();
  TimeOfDay todayTime = TimeOfDay.now();
  var _initialValue = 1.0;
  bool _isPaid = false;
  bool _cod = true;
  String pizzaTopping = "[]";
  String pizzaSize = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Text('Select your Topping',
                style: TextStyle(
                  fontSize: 20,
                )),
            CheckboxGroup(
              labels: [
                "Onion",
                "Black Olive",
                "Mushrooms",
                "Green Paper",
                "Corn",
              ],
              onSelected: (List<String> selected) {
                // print(selected);
                setState(() {
                  pizzaTopping = selected.toString();
                  print(pizzaTopping);
                });
              },
            ),
            Text('Select Pizza Size',
                style: TextStyle(
                  fontSize: 20,
                )),
            RadioButtonGroup(
              labels: [
                "Small",
                "Medium",
                "Large",
              ],
              onSelected: (String selected) {
                // print(selected);
                setState(() {
                  pizzaSize = selected;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Text('Pizzas Quantity: ',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Slider(
                    value: _initialValue,
                    onChanged: (newQty) {
                      setState(() {
                        _initialValue = newQty;
                      });
                      print('Pizzas Quantity: $_initialValue');
                    },
                    min: 1,
                    max: 10,
                    divisions: 9,
                    label: '$_initialValue',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Text('Payment Status: ',
                      style: TextStyle(
                        fontSize: 22,
                      )),
                  Switch(
                      value: _isPaid,
                      onChanged: (bool status) {
                        setState(() {
                          _isPaid = status;
                          _cod = !status;
                        });
                        print('Payment Status: $_isPaid');
                      }),
                  Text(
                    _isPaid ? "Yes" : "No",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Text('Go for COD: ',
                      style: TextStyle(
                        fontSize: 22,
                      )),
                  Checkbox(
                    value: _cod,
                    onChanged: (b) {
                      setState(() {
                        _cod = b;
                        _isPaid = !b;
                      });
                    },
                  ),
                  Text(
                    _cod ? "COD" : "Online",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Text('Select Delivery Date: ',
                      style: TextStyle(
                        fontSize: 22,
                      )),
                  IconButton(
                      onPressed: () {
                        selectDate(context);
                      },
                      icon: Icon(Icons.date_range)),
                  Text('${today.day}-${today.month}-${today.year}',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Text('Select Delivery Time: ',
                      style: TextStyle(
                        fontSize: 22,
                      )),
                  IconButton(
                      onPressed: () {
                        selectTime(context);
                      },
                      icon: Icon(Icons.access_time)),
                  Text(
                    '${todayTime.hour}:${todayTime.minute} ',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: (pizzaSize=="" || pizzaTopping=="[]") ? null :
                    () {
                      showPreview(context);

                      // Send data to another screen

                      // Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return OrderScreen(qty: _initialValue);
                      // }));
                    },
                child: Text(
                  "Preview Order",
                )
            ),
          ],
        ),
      ),
    );
  }

  void selectDate(BuildContext context) async {
    DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: today,
        firstDate: DateTime.now(),
        lastDate: DateTime(2025)
    );

    // print(pickedDate);
    if (pickedDate != null && pickedDate != today) {
      setState(() {
        today = pickedDate;
      });
    }
  }

  void selectTime(BuildContext context) async {
    TimeOfDay pickedTime =
    await showTimePicker(context: context, initialTime: todayTime);

    setState(() {
      todayTime = pickedTime;
    });
  }

  void showPreview(BuildContext context) {
    var alertDialog = CupertinoAlertDialog(
      title: Text(
        'Pizza Order Status',
        style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
            fontSize: 28),
      ),
      content: Text(
          'Topping: $pizzaTopping \nPizza Size: $pizzaSize\n Pizza Quantity: $_initialValue\n'
              'Final Bill: Jitne Paise Hai Utne Do Na Bhai 😂\n'
              'Delivery Date: ${today.day}-${today.month}-${today.year}\n'),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'Order Success');
                },
              child: Text("Proceed"),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Change Order"))
          ],
        )
      ],
    );

    showDialog(
        context: context,
        builder: (context) {
          return alertDialog;
        });
  }
}
