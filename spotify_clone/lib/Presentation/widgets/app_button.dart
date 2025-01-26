import 'package:flutter/material.dart';
import 'package:spotify_clone/Core/configs/theme/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key, required this.text, required this.onPressed, this.height});
  final String text;
  final VoidCallback onPressed;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: Size.fromHeight(height ?? 80),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
