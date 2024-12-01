import 'package:book_app/Features/home/presintation/views/widget/one_vertical.dart';
import 'package:book_app/Features/search/presentation/view/widget/text_field_search.dart';
import 'package:book_app/core/help/styls.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 15, left: 20, right: 20),
          child: textfildsearch(),
        ),
        const SizedBox(
          height: 16,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            ' Search Result',
            style: Styles.stylefont20.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox( 
          height: 5,
        ),
        const Expanded(
          child: listviewvirticalsearch(),
        ),
      ],
    );
  }
}

class listviewvirticalsearch extends StatelessWidget {
  const listviewvirticalsearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: oneVertecal(),
          );
        });
  }
}
