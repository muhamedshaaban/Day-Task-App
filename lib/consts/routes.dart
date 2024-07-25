import 'package:day_task_iti/screens/home_screen.dart';
import 'package:day_task_iti/screens/sign_in_screen.dart';
import 'package:day_task_iti/screens/splash_screen.dart';
import 'package:day_task_iti/screens/task_details.dart';
import 'package:flutter/material.dart';

import '../screens/sign_up.dart';
import '../screens/test_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/splash_screen': (_) => const SplashScreen(),
  '/sign_in_screen': (_) => const SignInScreen(),
  '/sign_up_screen': (_) => const SignUpScreen(),
  '/home_screen': (_) => const HomeScreen(),
  '/task_details_screen': (_) => const TaskDetailsScreen(),
  '/test_screen': (_) =>  TestScreen(),
};
