import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final double size;
  const ProfileAvatar({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(48)),
            child: Image.asset(
              'assets/temp/baby.jpeg', 
              width: size,
              height: size,
            ),
          );
  }
}