import 'package:flutter/material.dart';

class EnterNewHabitBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const EnterNewHabitBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5*fem)),
      backgroundColor: Color.fromARGB(255, 22, 22, 22),
      content: TextFormField(
        onTapOutside: (event){
          FocusScope.of(context).unfocus();
        },
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration:
        InputDecoration(
          contentPadding: EdgeInsets.all(18*fem),
          border: InputBorder.none,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: onSave,
          child: Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.black,),
          MaterialButton(
          onPressed: onCancel,
          child: Text(
            "Cancel",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.black,)
      ],
    );
  }
}