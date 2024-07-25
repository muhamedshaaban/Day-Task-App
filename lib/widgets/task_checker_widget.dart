import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../consts/colors.dart';

class TaskCheckerWidget extends StatelessWidget {
  const TaskCheckerWidget({
    super.key,
    required this.taskTitle,
  });
  final bool isDone = false;
  final String taskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: const Color(0xff455A64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 12),
            child: const Text(
              'User Interviews',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Inter-SemiBold',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(6),
            color: kButtonsColor,
            width: 30,
            height: 30,
            child: isDone
                ? SvgPicture.asset('assets/icons/tickcircle.svg')
                : SvgPicture.asset('assets/icons/tickcircleunckeck.svg'),
          ),
        ],
      ),
    );
  }
}
