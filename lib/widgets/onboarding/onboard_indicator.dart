import 'package:edu_vista/utils/color_utilis.dart';
import 'package:flutter/material.dart';

class OnBoardIndicator extends StatelessWidget {
  final int? positionIndex, currentIndex;
  const OnBoardIndicator({super.key, this.currentIndex, this.positionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: positionIndex == currentIndex ? 40 : 30,
      decoration: BoxDecoration(
          color: positionIndex == currentIndex
              ? ColorUtility.deepYellow
              : Colors.black,
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
