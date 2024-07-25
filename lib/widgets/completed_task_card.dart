import 'package:day_task_iti/consts/colors.dart';
import 'package:flutter/material.dart';

class CompletedTaskCardWidget extends StatelessWidget {
  final String title;
  final List<String> avatarUrls;
  final double progress;

  const CompletedTaskCardWidget({
    super.key,
    required this.title,
    required this.avatarUrls,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175,
      child: Card(
        color: kButtonsColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
                width: double.infinity,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'PilatExtended',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 20,
                child: Row(
                  children: [
                    const Text(
                      'Team Members',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Inter-Regular',
                      ),
                    ),
                    const SizedBox(width: 6),
                    Flexible(
                      child: Stack(
                        children: avatarUrls.asMap().entries.map((entry) {
                          int index = entry.key;
                          String url = entry.value;
                          return Positioned(
                            left: index * 13.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(url),
                              radius: 10,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Completed',
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    '$progress%',
                    style: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              LinearProgressIndicator(
                borderRadius: BorderRadius.circular(10),
                value: progress,
                minHeight: 6,
                backgroundColor: Colors.grey[300],
                color: Colors.black87,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
