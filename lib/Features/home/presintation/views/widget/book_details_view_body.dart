import 'package:book_app/Features/home/presintation/views/widget/Appbar_book_detials.dart';
import 'package:book_app/Features/home/presintation/views/widget/actionbottom.dart';
import 'package:book_app/Features/home/presintation/views/widget/one__horzen.dart';
import 'package:book_app/core/help/styls.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          const AppBarBookDetials(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .35),
            child: const oneHorezent(),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Reat in book loding',
            style: Styles.stylefont30,
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            'this the detials',
            style: Styles.stylfont25,
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 180,
            ),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.solidStar,
                  size: 14,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('(285)', style: Styles.stylefont20),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const actionbottom(),
          const SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'the more books free',
              style: Styles.stylefont20.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const listHorezintalBookdeitals()
        ]),
      ),
    );
  }
}

class listHorezintalBookdeitals extends StatelessWidget {
  const listHorezintalBookdeitals({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: Padding(
        padding: const EdgeInsets.only(left: 4),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: oneHorezent(),
              );
            }
            ),
      ),
    );
  }
}
