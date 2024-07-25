import 'package:day_task_iti/consts/colors.dart';
import 'package:day_task_iti/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/completed_task_card.dart';
import '../widgets/ongoing_task_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: HomeAppBar(),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search tasks',
                          hintStyle: const TextStyle(
                            color: kTextColor,
                            fontFamily: 'Inter-Regular',
                          ),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/icons/searchnormal1.svg',
                              height: 20,
                              width: 20,
                              color: kTextColor,
                            ),
                          ),
                          filled: true,
                          fillColor: kFormsColor,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 14, right: 14),
                    width: 40,
                    height: 45,
                    color: kButtonsColor,
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/setting4.svg',
                        height: 20,
                        width: 20,
                      ),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Completed Tasks',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'Inter-SemiBold',
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/task_details_screen');
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 14,
                          color: kButtonsColor,
                          fontFamily: 'Inter-Regular',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              height: 150,
              margin: const EdgeInsets.only(left: 14),
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return CompletedTaskCardWidget(
                    title: 'Real Estate Website Design',
                    avatarUrls: List.generate(
                      5,
                      (index) => 'https://picsum.photos/200',
                    ),
                    progress: 1,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ongoing Projects',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: 'Inter-SemiBold',
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 14,
                            color: kButtonsColor,
                            fontFamily: 'Inter-Regular',
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: OngoingTaskCardWidget(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
