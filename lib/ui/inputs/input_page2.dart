import 'package:flutter/material.dart';
import 'package:flutter_tuts/ui/app_widgets.dart';

class InputPage2 extends StatefulWidget {
  const InputPage2({super.key});

  @override
  _DemoClassState createState() => _DemoClassState();
}

class _DemoClassState extends State<InputPage2> {
  TextEditingController userInput = TextEditingController();
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Tutorials"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Center(
              child: Text(
                "Valid TextFormField In Flutter",
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              style: TextStyle(fontSize: 18),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  hintText: "Enter your email ID"),
            ),
            const SizedBox(
              height: 20,
            ),
            TF(
              title: "Email",
            ),
            const SizedBox(
              height: 20,
            ),
            BT(
              title: "Valid Email",
            ),
          ],
        ),
      ),
    );
  }
}
