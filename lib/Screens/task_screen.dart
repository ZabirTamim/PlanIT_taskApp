import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/task_card.dart';


class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  String? date;
  @override
  void initState() {
    var formatter = DateFormat('kk:mm yyyy-MM-dd');
    var now = DateTime.now();
    String formattedDate = formatter.format(now);
    date = formattedDate;
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Task Board", style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TaskCard(taskTitle: "Task One", date: date.toString()),
            const SizedBox(height: 10),
            TaskCard(taskTitle: "Task Two", date: date.toString()),
            const SizedBox(height: 10),
            TaskCard(taskTitle: "Task Three", date: date.toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color(0xff393939),
        child: const Icon(Icons.add),
      ),

    );
  }
}


