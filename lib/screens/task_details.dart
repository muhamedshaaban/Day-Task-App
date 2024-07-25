import 'package:day_task_iti/consts/colors.dart';
import 'package:day_task_iti/widgets/avatar_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../widgets/task_checker_widget.dart';
import '../widgets/task_details_widget.dart';
import '../widgets/task_screen_app_bar.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: TaskScreenAppBar()),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Real Estate App Design',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'PilatExtended',
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                TaskDetailsWidget(
                  assetName: 'assets/icons/calendarremove.svg',
                  taskTitle: 'Due Date',
                  widget: Text(
                    '20 June',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Inter-SemiBold',
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Flexible(
                    child: TaskDetailsWidget(
                      assetName: 'assets/icons/profile2user.svg',
                      taskTitle: 'Project Team',
                      widget: AvatarStack(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Project Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter-Medium',
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 10,
                    fontFamily: 'Inter-Regular',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(children: [
                const Text(
                  'Project Progress',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter-Medium',
                  ),
                ),
                const Spacer(),
                SizedBox(
                  child: CircularPercentIndicator(
                    progressColor: kButtonsColor,
                    radius: 24,
                    lineWidth: 2,
                    percent: .6,
                    center: const Text(
                      '60%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Inter-SemiBold',
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(height: 12),
            const Text(
              'All Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Inter-SemiBold',
              ),
            ),
            const SizedBox(height: 8),
            const TaskCheckerWidget(
              taskTitle: 'User Interviews',
            ),
          ],
        ),
      ),
    );
  }
}
