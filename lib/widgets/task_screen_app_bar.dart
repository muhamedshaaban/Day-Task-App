import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskScreenAppBar extends StatelessWidget {
  const TaskScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: const Text(
        'Task Details',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Inter-SemiBold',
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/arrowleft.svg',
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/edit.svg'),
          color: Colors.white,
        ),
      ],
    );
  }
}
