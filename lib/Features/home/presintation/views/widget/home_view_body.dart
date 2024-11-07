import 'package:book_app/Features/home/presintation/views/widget/custom_ListView_Horezent.dart';
import 'package:book_app/Features/home/presintation/views/widget/custome_Appbar.dart';
import 'package:book_app/Features/home/presintation/views/widget/customlistviewvertecal.dart';
import 'package:book_app/constans.dart';
import 'package:book_app/core/help/styls.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 12,
              ),
              child: customAppBaar(),
            ),
            customListViewHorezent(),
            ksizbox,
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Best Read',
                style: Styles.stylfont25,
              ),
            ),
            ksizbox
          ],
        ),
      ),
      SliverFillRemaining(
        child: customlistviewvertecal(),
      ),
    ]);
  }
}
