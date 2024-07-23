import 'package:day_task_iti/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../widgets/custom_text_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset('assets/images/day-task.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Create Account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextFormField(
              formName: 'Full Name',
              hintText: 'Enter your full name',
              prefixIcon: Icons.person_outline_outlined,
            ),
            const SizedBox(
              height: 14,
            ),
            const CustomTextFormField(
              formName: 'Email Address',
              hintText: 'Enter your email',
              prefixIcon: Icons.person_pin_outlined,
            ),
            const SizedBox(
              height: 14,
            ),
            const CustomTextFormField(
              isObsecure: true,
              formName: 'Password',
              hintText: 'Enter your password',
              prefixIcon: Icons.lock_outline,
            ),
            Row(
              children: [
                const Icon(
                  Icons.check_box_outlined,
                  color: kButtonsColor,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, left: 6),
                    child: RichText(
                      text: const TextSpan(
                        text: 'I have read & agree to DayTask ', // Default text
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 12,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Privacy Policy, ',
                            style: TextStyle(
                              color:
                                  kButtonsColor, // Custom color for specific words
                            ),
                          ),
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(color: kButtonsColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            CustomElevatedButton(
                onPressed: () {},
                iconText: 'Sign Up',
                buttonColor: kButtonsColor,
                textColor: Colors.black),
            const SizedBox(
              height: 14,
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    endIndent: 8,
                    color: kFormsColor,
                  ),
                ),
                Text(
                  'Or continue with',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 14,
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    indent: 8,
                    color: kFormsColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            CustomElevatedButton(
                textColor: Colors.white,
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
                buttonColor: Colors.transparent,
                onPressed: () {},
                iconText: 'Google'),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already hava an account?",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/sign_in_screen');
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        color: kButtonsColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
