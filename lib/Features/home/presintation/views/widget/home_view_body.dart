import 'package:book_app/Features/home/presintation/views/widget/Feature_ListView_Horezent.dart';
import 'package:book_app/Features/home/presintation/views/widget/custome_Appbar.dart';
import 'package:book_app/core/help/styls.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customAppBaar(),
        FeatureListViewHorezent(),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Best salre', style: Styls.stylstitil),
        ),
      ],
    );
  }
}
