import 'package:book_app/Features/home/presintation/views/widget/BstsellerListView.dart';
import 'package:book_app/Features/home/presintation/views/widget/Feature_ListView_Horezent.dart';
import 'package:book_app/Features/home/presintation/views/widget/custome_Appbar.dart';
import 'package:book_app/constans.dart';
import 'package:book_app/core/help/styls.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10, right: 8, top: 5, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customAppBaar(),
          FeatureListViewHorezent(),
          ksizbox,
          Text(
            'Best Read',
            style: Styles.stylfont25,
          ),
          ksizbox,
          BstsellerListView(),
        ],
      ),
    );
  }
}

