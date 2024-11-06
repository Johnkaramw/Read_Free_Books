import 'dart:ui';
import 'package:book_app/constans.dart';
import 'package:book_app/core/help/Assets.dart';
import 'package:book_app/core/help/styls.dart';
import 'package:flutter/material.dart';

class BstsellerListView extends StatelessWidget {
  const BstsellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.5 / 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AsseetData.listsell),
                  ),
                ),
              ),
            ),
          ),
          ksizbox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  'the best seller in apps dkhksddewb ofilf lofj;weofpepfoejowfilw efledjfpwj',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.stylfont25,
                ),
              ),
              ksizbox,
              const Text(
                'l.krolwd',
                style: Styles.stylefont20,
              ),
              ksizbox,
              Row(
                children: [
                  Text(
                    '95 💲',
                    style: Styles.stylefont20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  ksizbox,
                  const Column(
                    children: [Text('⭐ (4.9)')],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
