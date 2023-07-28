import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';
 import 'package:flutter/services.dart';

 class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _DemoClassState createState() => _DemoClassState();
 }

 class _DemoClassState extends State<InputPage> {
  TextEditingController userInput = TextEditingController();
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Tutorials"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Text(
                "TextFormField In Flutter",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: TextFormField(
                controller: userInput,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
                onChanged: (value) {
                  setState(() {
                    userInput.text = value.toString();
                  });
                },
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  //add prefix icon
                  prefixIcon: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.grey,
                  ),

                  errorText: "Error",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.grey,

                  hintText: "Email/Mobile",

                  //make hint text
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),

                  //create lable
                  labelText: 'Email/Mobile',
                  //lable style
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Text(userInput.toString()),
          ],
        ),
      ),
    );
  }
 }
