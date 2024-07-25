import 'package:day_task_iti/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../consts/colors.dart';
import '../widgets/custom_text_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                'Welcome Back!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Inter-SemiBold'),
              ),
              const SizedBox(
                height: 6,
              ),
              CustomTextFormField(
                formName: 'Email Address',
                hintText: 'Enter your email',
                prefixIcon: SvgPicture.asset(
                  'assets/icons/usertag.svg',
                  width: 12, // Adjust the width as needed
                  height: 12, // Adjust the height as needed
                  color: Colors.white, // Optional: Set the color if needed
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              CustomTextFormField(
                isObsecure: true,
                formName: 'Password',
                hintText: 'Enter your password',
                prefixIcon: SvgPicture.asset(
                  'assets/icons/lock1.svg',
                  width: 12, // Adjust the width as needed
                  height: 12, // Adjust the height as needed
                  color: Colors.white, // Optional: Set the color if needed
                ),
              ),
              const SizedBox(height: 4),
              const InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              CustomElevatedButton(
                textColor: Colors.black,
                buttonColor: kButtonsColor,
                iconText: 'Log In',
                onPressed: () => Navigator.pushNamed(context, '/home_screen'),
              ),
              const SizedBox(
                height: 18,
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
              const SizedBox(height: 18),
              CustomElevatedButton(
                textColor: Colors.white,
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
                buttonColor: Colors.transparent,
                onPressed: () {},
                iconText: 'Google',
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 12,
                      fontFamily: 'Inter-Regular',
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/sign_up_screen');
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: kButtonsColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter-Regular',
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
