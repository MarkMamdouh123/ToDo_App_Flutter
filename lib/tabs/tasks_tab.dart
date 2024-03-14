import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/firebase_functions.dart';
import 'package:todo_app/task_item.dart';
import 'package:todo_app/task_model.dart';

class TasksTab extends StatefulWidget {
  TasksTab({Key? key});

  @override
  State<TasksTab> createState() => _TasksTabState();
}

class _TasksTabState extends State<TasksTab> {
  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          child: Stack(
            children: [
              Container(
                height: 70,
                color: Colors.blue,
              ),
              Positioned(
                bottom: 4,
                left: 0,
                right: 0,
                child: DatePicker(
                  DateTime.now(),
                  height: 90,
                  locale: "en",
                  initialSelectedDate: selectedDate,
                  selectionColor: Colors.blue,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    selectedDate = date;
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
            child: StreamBuilder(
          stream: FirebaseFunctions.getTasks(selectedDate),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Column(
                children: [
                  Text('Something Went Wrong'),
                  ElevatedButton(onPressed: () {}, child: Text('Try again'))
                ],
              );
            }
            List<TaskModel> tasksLists =
                snapshot.data?.docs.map((e) => e.data()).toList() ?? [];
            if (tasksLists.isEmpty) {
              return Center(child: Text('No Tasks'));
            }
            return ListView.separated(
                itemBuilder: (context, index) {
                  return TaskItem(model: tasksLists[index]);
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 12,
                    ),
                itemCount: tasksLists.length);
          },
        ))
      ],
    );
  }
}
