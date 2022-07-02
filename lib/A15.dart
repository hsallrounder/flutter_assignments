import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        home: SI_Claci(),
      )
  );
}

class SI_Claci extends StatefulWidget {
  const SI_Claci({Key? key}) : super(key: key);

  @override
  State<SI_Claci> createState() => _SI_ClaciState();
}

class _SI_ClaciState extends State<SI_Claci> {

  TextEditingController _p_control = TextEditingController();
  TextEditingController _r_control = TextEditingController();
  TextEditingController _t_control = TextEditingController();
  bool term_check=false;
  var result="";
  String calRes(){
    var p=double.parse(_p_control.text);
    var r=double.parse(_r_control.text);
    var t=double.parse(_t_control.text);
    var ans= p + (p*r*t)/100;
    return "After $t years, Your investment will be worth $ans Rupees";
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(

          title:Text(
            "SI Calculator",
          ),
        ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Center(
              child: Image(
                image: AssetImage("assets/money_PNG3523.png"),
                alignment: Alignment.center,
                width: 300,
                height: 300,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _p_control,
              decoration: InputDecoration(
                  labelText: "Principle",
                  hintText: "Enter Principal Amount e.g. 12000",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _r_control,
              decoration: InputDecoration(
                  labelText: "Rate",
                  hintText: "Enter Rate",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _t_control,
              decoration: InputDecoration(
                  labelText: "Term",
                  hintText: "Enter Term",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  value: term_check,
                  onChanged: (bool? value) {
                    setState(() {
                      term_check = value!;
                    });
                  },
                ),
                Text("Are you agree with Temrs"),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                      onPressed: term_check ? () {
                        setState(() {
                          result=calRes();
                        });
                      }
                      : null,
                      child: Text(
                        "Calculate",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _p_control.text="";
                        _r_control.text="";
                        _t_control.text="";
                        term_check=false;
                        result="";
                      });
                    },
                    child: Text(
                      "Reset",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              result,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
