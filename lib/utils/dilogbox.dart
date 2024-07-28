import 'package:flutter/material.dart';
import 'package:todo/utils/btns.dart';

class Dilogbox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  Dilogbox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
          height: 130,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //get user input
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      hintText: "Enter new task", border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyBtns(text: "Save", onPressed: onSave),
                    MyBtns(text: "Cancel", onPressed: onCancel),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
