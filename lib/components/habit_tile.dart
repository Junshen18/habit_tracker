import 'package:flutter/material.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final bool habitCompleted;
  final Function(bool?)? onChanged;


  const HabitTile({
    super.key,
    required this.habitName,
    required this.habitCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Padding(
      padding: EdgeInsets.all(16.0*fem),
      child: Container(
        padding: EdgeInsets.all(20*fem),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8*fem),
          ),
        child: Row(
          children: [
            Checkbox(value: habitCompleted, onChanged: onChanged),
            Text(habitName),
          ],
        ),
      ),
    );
  }
}