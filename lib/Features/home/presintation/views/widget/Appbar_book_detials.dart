import 'package:flutter/material.dart';

class AppBarBookDetials extends StatelessWidget {
  const AppBarBookDetials({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
    );
  }
}
