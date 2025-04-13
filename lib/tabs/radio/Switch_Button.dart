import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_colors.dart';

Widget  SwitchButton(String text, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 75, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.mainColor : AppColors.blackunvisible, 
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }