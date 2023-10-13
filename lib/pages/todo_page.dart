import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController myController = TextEditingController();
  String _greetingMessage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_greetingMessage),
              TextField(
                controller: myController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Hello world'),
              ),
              ElevatedButton(onPressed: _greetUser, child: const Text('Tap')),
            ],
          ),
        ),
      ),
    );
  }

  void _greetUser() {
    print(myController.text);
    setState(() {
      _greetingMessage = myController.text;
    });
  }
}
