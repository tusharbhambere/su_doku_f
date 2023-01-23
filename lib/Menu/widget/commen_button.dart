import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:su_doku_f/core/Theme/themed.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const MainButton({
    super.key,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.of(context).secondary,
          minimumSize: Size(0.7.sw, 30.h),
          textStyle: TextStyle(fontSize: 16.sp)),
      onPressed: ontap,
      child: Text(
        text,
      ),
    );
  }
}
