import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../consts/colors.dart';

class TaskDetailsWidget extends StatelessWidget {
  const TaskDetailsWidget({
    super.key,
    required this.assetName,
    required this.widget,
    required this.taskTitle,
  });

  final String assetName;
  final String taskTitle;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            color: kButtonsColor,
            width: 35,
            height: 35,
            child: SvgPicture.asset(
                assetName),
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              Text(
                // 'Due Date',
                taskTitle,
                style: const TextStyle(
                  color: kTextColor,
                  fontSize: 10,
                  fontFamily: 'Inter-Medium',
                ),
              ),
              widget,
              // const Text(
              //   '20 June',
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 12,
              //     fontFamily: 'Inter-SemiBold',
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
