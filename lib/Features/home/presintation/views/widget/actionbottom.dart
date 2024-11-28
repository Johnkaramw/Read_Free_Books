import 'dart:ui';
import 'package:book_app/core/widget/custom_botton.dart';
import 'package:flutter/material.dart';

class actionbottom extends StatelessWidget {
  const actionbottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CostomBottom(
            text:'19 dolar',
            backgraond: Colors.white,
            textColor: Colors.black,
            fontsiz: 19,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CostomBottom(
            text: 'reviw free',
            backgraond: Color.fromARGB(255, 91, 245, 91),
            textColor: Colors.black,
            fontsiz: 22,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
