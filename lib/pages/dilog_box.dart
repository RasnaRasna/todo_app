import 'package:flutter/material.dart';
import 'package:todo_appp/pages/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    print("working");
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 123, 170, 194),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Add a new task",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),

            //save button  ,          cancel button,

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                myButtons(text: "Save", onPressed: onSave),
                const SizedBox(
                  width: 5,
                ),
                myButtons(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
