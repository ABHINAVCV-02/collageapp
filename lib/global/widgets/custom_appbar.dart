import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text(
        'College App',
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: false,
      backgroundColor: const Color(0xffBA1F1F),
    );
  }
}