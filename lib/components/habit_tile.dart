import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final bool habitCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? settingsTapped;
  final Function(BuildContext)? deleteTapped;

  const HabitTile({
    super.key,
    required this.habitName,
    required this.habitCompleted,
    required this.onChanged,
    required this.settingsTapped,
    required this.deleteTapped,
  });

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Padding(
      padding: EdgeInsets.all(16.0*fem),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(), 
          extentRatio: 0.4,
          children: [
            //setting action
            SlidableAction(
              onPressed: settingsTapped,
              backgroundColor: Colors.grey.shade800,
              icon: Icons.settings,
            ),

            //delete action
            SlidableAction(
              borderRadius: BorderRadius.only(topRight: Radius.circular(8*fem), bottomRight: Radius.circular(8*fem)),
              onPressed: deleteTapped,
              backgroundColor: Colors.red.shade300,
              icon: Icons.delete,
            )
          ],
        ),
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
      ),
    );
  }
}