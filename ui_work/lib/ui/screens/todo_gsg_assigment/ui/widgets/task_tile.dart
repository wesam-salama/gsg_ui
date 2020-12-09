import 'package:flutter/material.dart';
import 'package:ui_work/ui/screens/todo_gsg_assigment/models/task_model.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function checkBoxCallback;
  TaskTile({
    this.task,
    this.checkBoxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            task.title,
            style: TextStyle(fontSize: 20),
          ),
          Checkbox(
            value: task.isComplete,
            activeColor: Colors.green,
            onChanged: checkBoxCallback,
          )
        ],
      ),
    );
  }
}
