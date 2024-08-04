import 'package:edu_vista/utils/color_utilis.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  void Function() onPressed;
  // String label;
  double? width;
  Color? backgroundColor;
  Color? foregroundColor;
  Widget? child;
  double? horizontal;
  CustomElevatedButton(
      {required this.onPressed,
      this.width,
      this.backgroundColor,
      this.foregroundColor,
      required this.child,
      this.horizontal,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: horizontal ?? 20),
      child: SizedBox(
        width: width ?? double.infinity,
        height: 52,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
            backgroundColor: backgroundColor ?? ColorUtility.deepYellow,
            foregroundColor: foregroundColor ?? Colors.white,
          ),
          onPressed: () {},
          child: child,
        ),
      ),
    );
  }
}
