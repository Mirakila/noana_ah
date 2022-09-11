import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.portrait),
      onPressed: () {
        Navigator.pushNamed(context, '/profile');
      },
    );
  }
}
