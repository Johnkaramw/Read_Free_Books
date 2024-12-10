import 'package:book_app/Features/home/Data/repo/home_repo_impelmntation.dart';
import 'package:book_app/Features/home/presintation/manger/listHorezen/list_horezn_cubit.dart';
import 'package:book_app/Features/home/presintation/manger/list_news_vertical/list_vertecal_cubit.dart';
import 'package:book_app/constans.dart';
import 'package:book_app/core/help/router.dart';
import 'package:book_app/core/help/servece_localet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  stupServiceApi();
  runApp(const BoockApp());
}
class BoockApp extends StatelessWidget {
  const BoockApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ListHoreznCubit(
            getIt.get<HomeRepoImpelmntation>(),
          ),
        ),
        BlocProvider(
          create: (context) => ListVertecalCubit(
             getIt.get<HomeRepoImpelmntation>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: RouterAcsses.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.aBeeZeeTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
