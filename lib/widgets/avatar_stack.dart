import 'package:flutter/material.dart';

class AvatarStack extends StatelessWidget {
  const AvatarStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> avatarUrls = [
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
    ];

    return SizedBox(
      width: 60,
      height: 20,
      child: Stack(
        children: avatarUrls.asMap().entries.map((entry) {
          int index = entry.key;
          String url = entry.value;
          return Positioned(
            left: index * 12.0,
            child: CircleAvatar(
              backgroundImage: NetworkImage(url),
              radius: 9,
            ),
          );
        }).toList(),
      ),
    );
  }
}
