import 'package:flutter/material.dart';

import '../widgets/custom_row.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  dynamic taskData = {
    'daily': [
      {'task_assign': 10, 'task_completed': 5},
    ],
    'weekly': [
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 8},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 8},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 6},
    ],
    'monthly': [
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 8},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 8},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 6},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 8},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 8},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 6},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 8},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 8},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 6},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 8},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 8},
      {'task_assign': 10, 'task_completed': 5},
      {'task_assign': 10, 'task_completed': 6},
      {'task_assign': 10, 'task_completed': 6},
      {'task_assign': 10, 'task_completed': 6},
    ],
  };
  List<Map> task = [];
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    print(task);
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),

          SizedBox(
            height: 42,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        task = taskData['daily'];
                      });
                    },
                    child: const Text('Daily')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        task = taskData['weekly'];
                      });
                    },
                    child: const Text('Weekly')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        task = taskData['monthly'];
                      });
                    },
                    child: const Text('Monthly')),
              ],
            ),
          ),
          //from here the container of the ui is startsssssssss...
          //..........//////
          Container(
            padding: const EdgeInsets.all(3),
            margin: const EdgeInsets.all(8),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffcec7fd),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 20),
                    height: 230,
                    width: double.infinity,
                    child: ListView.builder(
                        itemCount: task.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          double h = task[index]['task_completed'] /
                              task[index]['task_assign'] *
                              200;
                          print('Height: $h');
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                    '${task[index]['task_completed']}/${task[index]['task_assign']}'),
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 30,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        child: Container(
                                          height: h,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text('${index + 1}'),
                              ],
                            ),
                          );
                        })),
                const Divider(
                  color: Colors.grey,
                  endIndent: 5,
                  indent: 5,
                ),
                const SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TaskCheckboxRow(isChecked: true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
