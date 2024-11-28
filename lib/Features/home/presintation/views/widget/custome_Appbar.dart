import 'package:book_app/core/help/Image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class customAppBaar extends StatelessWidget {
  const customAppBaar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 16, top: 15, bottom: 10),
      child: Row(
        children: [
          Image.asset(
            AsseetData.logo,
            height: 70,
            width: 70,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
                          GoRouter.of(context).push('/SearchView');

            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ],
      ),
    );
  }
}
