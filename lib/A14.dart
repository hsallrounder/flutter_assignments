import 'package:flutter/material.dart';
import 'Blank.dart';

void main(){
  runApp(
      MaterialApp(
          home: YoWp(),
        debugShowCheckedModeBanner: false,
      )
  );
}

class YoWp extends StatelessWidget {
  YoWp({Key? key}) : super(key: key);

  var wppopup=["New group","New broadcast","Lined devices","Starred messages","Payments","Setting"];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          floatingActionButton:
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(-26, 7, 94, 84),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
          appBar: AppBar(
            title: Text("YoWhatsApp"),
            backgroundColor: Color.fromARGB(-26, 7, 94, 84),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                  )
              ),
              PopupMenuButton(
                  itemBuilder: (BuildContext ct){
                    return wppopup.map((String val){
                      return PopupMenuItem(
                        child: Text(val),
                        value: val,
                      );
                    }).toList();
                  }
                  )
            ],
            bottom:
            TabBar(
                labelColor: Colors.white,
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
                indicatorColor: Colors.white,
                tabs: [
                  Container(
                    width: 38,
                    height: 45,
                    alignment: Alignment.center,
                    child:
                    Icon(
                      Icons.photo_camera,
                      color: Color.fromARGB(-16, 131, 175, 170),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 45,
                    alignment: Alignment.center,
                    child:
                      Text(
                        "CHATS",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                  ),
                  Container(
                      width: 105,
                      height: 45,
                      alignment: Alignment.center,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "STATUS",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.fiber_manual_record,
                            size: 10,
                            color: Color.fromARGB(-16, 131, 175, 170),
                          ),
                        ],
                      ),
                  ),
                  Container(
                    width: 105,
                    height: 45,
                    alignment: Alignment.center,
                    child:
                    Text(
                      "CALLS",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
            ),
          ),

          body: TabBarView(
            children: [
              Blank(),
              Blank(),
              Blank(),
              Blank()
            ],
          ),
        )
    );
  }
}
