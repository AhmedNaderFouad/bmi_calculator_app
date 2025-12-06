import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "BMI Calculator",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 23,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      backgroundColor: Color(0xff24263B),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}
