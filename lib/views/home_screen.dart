import 'package:calculator_app/views/Result.dart';
import 'package:calculator_app/views/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          inputtext(controller: number1, txt: "Enter first number "),
          inputtext(controller: number2, txt: "Enter second number "),
          button(
              color: Colors.blue,
              txt: "Add",
              onTap: () {
                double result =
                    double.parse(number1.text) + double.parse(number2.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result(result: result)));
              }),
          button(
              color: Colors.red,
              txt: "Multiply",
              onTap: () {
                double result =
                    double.parse(number1.text) * double.parse(number2.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result(result: result)));
              }),
          button(
              color: Colors.green,
              txt: "Divide",
              onTap: () {
                double result =
                    double.parse(number1.text) / double.parse(number2.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result(result: result)));
              })
        ],
      ),
    );
  }
}
