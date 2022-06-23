import 'package:flutter/material.dart';
import 'package:inote/common/constants/colors.dart';

class TaskList extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final Color? iconColor;
  final Color? bgColor;
  final Color? btnColor;
  final num? left;
  final num? done;
  final bool isLast;

  const TaskList({
    Key? key,
    this.iconData,
    this.title,
    this.iconColor,
    this.bgColor,
    this.btnColor,
    this.left,
    this.done,
    this.isLast = false,
  }) : super(key: key);

  get taskList => <TaskList>[
        TaskList(
          iconData: Icons.person_rounded,
          title: 'Personal',
          bgColor: kYellowLight,
          iconColor: kYellowDark,
          btnColor: kYellow,
          done: 1,
          left: 3,
        ),
        TaskList(
          iconData: Icons.person_rounded,
          title: 'Personal',
          bgColor: kYellowLight,
          iconColor: kYellowDark,
          btnColor: kYellow,
          done: 1,
          left: 3,
        ),
        TaskList(
          iconData: Icons.person_rounded,
          title: 'Personal',
          bgColor: kYellowLight,
          iconColor: kYellowDark,
          btnColor: kYellow,
          done: 1,
          left: 3,
        ),
        TaskList(isLast: true)
      ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: taskList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => taskList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, taskList[index])),
    );
  }

  Widget _buildAddTask() {
    return Text('Add Task');
  }

  Widget _buildTask(BuildContext context, TaskList taskList) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: taskList.bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
