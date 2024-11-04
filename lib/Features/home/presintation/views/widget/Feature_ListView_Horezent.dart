import 'package:book_app/Features/home/presintation/views/widget/CustomitemHomeview.dart';
import 'package:flutter/material.dart';

class FeatureListViewHorezent extends StatelessWidget {
  const FeatureListViewHorezent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomitemHomeview(),
            );
          }),
    );
  }
}
