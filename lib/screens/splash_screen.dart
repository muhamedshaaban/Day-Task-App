import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../widgets/custom_elevated_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/day-task.png',
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.white,
                height: 250,
                width: 280,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(
                    'assets/images/pana.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Manage your \nTask With',
                    style: TextStyle(
                        fontFamily: 'PilatExtended',
                        color: Colors.white,
                        fontSize: 42,
                        height: 1,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'DayTask',
                    style: TextStyle(
                        fontFamily: 'PilatExtended',
                        color: kButtonsColor,
                        fontSize: 42,
                        height: 1,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              CustomElevatedButton(
                buttonColor: kButtonsColor,
                textColor: Colors.black,
                iconText: "Let's Start",
                onPressed: () =>
                    Navigator.pushNamed(context, '/sign_in_screen'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
