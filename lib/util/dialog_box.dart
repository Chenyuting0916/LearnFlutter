import 'package:flutter/material.dart';
import 'package:test_project/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  VoidCallback onCanceled;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSaved,
      required this.onCanceled});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 200,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Add a new task'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(text: 'Save', onPressed: onSaved),
              const SizedBox(
                width: 8,
              ),
              MyButton(text: 'Cancel', onPressed: onCanceled)
            ],
          )
        ]),
      ),
    );
  }
}
