import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/dice-2.png', width: 200,),
              const TextButton(
                onPressed: null, child: Text(
                "ROLL DICE", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 30, color: Colors.white),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

