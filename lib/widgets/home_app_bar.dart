import 'package:day_task_iti/consts/colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                        color: kButtonsColor,
                        fontSize: 11,
                        fontFamily: 'Inter-Medium',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Fazil Laghari',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'PilatExtended'),
                  )
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/Rectangle 6.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
