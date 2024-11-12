import 'package:book_app/Features/home/presintation/views/widget/Appbar_book_detials.dart';
import 'package:flutter/material.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppBarBookDetials(),
      ],
    );
  }
}

