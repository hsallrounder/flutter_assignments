import 'package:flutter/material.dart';

void main(){
  runApp(Menus());
}

class Menus extends StatefulWidget {
  const Menus({Key? key}) : super(key: key);

  @override
  State<Menus> createState() => _MenusState();
}

class _MenusState extends State<Menus> {
var popup=["Account","Setting","Help & Feedback","Sign Out"];
var drop1=["Select Stream","B.Tech","B.B.A","B.Com","B.Sc"];
var drop2=["Select Graduation Year","2022","2023","2024","2025","2026","2027"];
var drop3=["Select Age Group","18-21","22-28","29-34","35-40"];

String drop1_item="Select Stream";
String drop2_item="Select Graduation Year";
String drop3_item="Select Age Group";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fill the from:"),
          backgroundColor: Colors.amber,
          actions: [
            PopupMenuButton(
                onSelected: (String? newItem) {print(newItem);},
                itemBuilder: (BuildContext context){
                  return popup.map((String myPopup) {
                    return PopupMenuItem(
                      child: Text(myPopup),
                      value: myPopup,
                    );
                  }).toList();
                })
          ],
        ),

        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                DropdownButton(
                  items: drop1.map((String drop1Items){
                    return DropdownMenuItem(
                      child: Text(
                        drop1Items,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: (drop1_item==drop1Items) ? Colors.black54 : Colors.black,
                        ),
                      ),
                      value: drop1Items,
                    );
                  }).toList(),
                  onChanged: (String? newItem){
                    setState(() {
                      drop1_item=newItem!;
                    });
                    },
                  value: drop1_item,
                )
              ]
            ),

            SizedBox(
              height: 20,
            ),

            Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  DropdownButton(
                    items: drop2.map((String drop2Items){
                      return DropdownMenuItem(
                        child: Text(
                          drop2Items,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: (drop2_item==drop2Items) ? Colors.black54 : Colors.black,
                          ),
                        ),
                        value: drop2Items,
                      );
                    }).toList(),
                    onChanged: (String? newItem){
                      setState(() {
                        drop2_item=newItem!;
                      });
                    },
                    value: drop2_item,
                  )
                ]
            ),

            SizedBox(
              height: 20,
            ),

            Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  DropdownButton(
                    items: drop3.map((String drop3Items){
                      return DropdownMenuItem(
                        child: Text(
                          drop3Items,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: (drop3_item==drop3Items) ? Colors.black54 : Colors.black,
                          ),
                        ),
                        value: drop3Items,
                      );
                    }).toList(),
                    onChanged: (String? newItem){
                      setState(() {
                        drop3_item=newItem!;
                      });
                      },
                    value: drop3_item,
                  )
                ]
            )
          ],
        ),
      ),
    );
  }
}
