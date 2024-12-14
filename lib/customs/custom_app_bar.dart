import 'package:flutter/material.dart';
import 'package:note_app/customs/custom_icon.dart';
import 'package:note_app/customs/custom_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: CustomTextStyles.AppBar_text,
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
          onPressed: onPressed,
        )
      ],
    );
  }
}
