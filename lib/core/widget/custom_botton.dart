import 'package:flutter/material.dart';

class CostomBottom extends StatelessWidget {
  const CostomBottom({
    super.key,
    required this.backgraond,
    required this.textColor,
    this.borderRadius, 
    required this.text,
     required this.fontsiz,
  });
  final Color backgraond;
  final Color textColor;
  final BorderRadius ? borderRadius;
  final String  text;
  final double ? fontsiz;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgraond,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: 
         Text( text ,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: fontsiz,
          ),
        ),
      ),
    );
  }
}
