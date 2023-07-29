import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tuts/ui/app_widgets.dart';

class InputPage1 extends StatefulWidget {
  const InputPage1({super.key});

  @override
  _DemoClassState createState() => _DemoClassState();
}

class _DemoClassState extends State<InputPage1> {
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
                "Valid TextFormField In Flutter",
                style: TextStyle(fontSize: 24),
              ),
            ),
            TF(),
            Text(userInput.toString()),
          ],
        ),
      ),
    );
  }
}
