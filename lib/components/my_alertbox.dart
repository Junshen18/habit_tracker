import 'package:flutter/material.dart';

class MyAlertBox extends StatelessWidget {
  final controller;
  final String hintText;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const MyAlertBox({
    super.key, 
    required this.controller, 
    required this.hintText,
    required this.onSave, 
    required this.onCancel});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5*fem)),
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      content: TextFormField(
        onTapOutside: (event){
          FocusScope.of(context).unfocus();
        },
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration:
        InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white54, fontWeight: FontWeight.w400),
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
          color: Colors.black,
          child: const Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
          ),
          MaterialButton(
          onPressed: onCancel,
          color: Colors.black,
          child: const Text(
            "Cancel",
            style: TextStyle(color: Colors.white),
          ),
          )
      ],
    );
  }
}