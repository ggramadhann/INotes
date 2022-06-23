import 'package:flutter/material.dart';
import 'package:inote/common/constants/colors.dart';
import 'package:inote/view/screens/home/go_premium.dart';
import 'package:inote/view/screens/home/task_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoPremium(),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Notes',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: TaskList(),
            // child: TaskList(
            //   iconData: Icons.person_rounded,
            //   title: 'Personal',
            //   bgColor: kYellowLight,
            //   iconColor: kYellowDark,
            //   btnColor: kYellow,
            //   done: 1,
            //   left: 3,
            // ),
          )
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            margin: EdgeInsets.only(left: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('images/assets/avatar.jpg'),
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Hi, Gilang!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      actions: [
        Icon(
          Icons.more_vert,
          color: Colors.black,
          size: 40,
        ),
      ],
    );
  }
}
