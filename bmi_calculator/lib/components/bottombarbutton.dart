import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class BottomBarButton extends StatelessWidget {
  BottomBarButton({required this.onTap, required this.buttonTitle});

  final Function()? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ),
        color: bottombarColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}
