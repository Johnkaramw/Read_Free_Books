import 'package:book_app/Features/home/presintation/views/book_details_view.dart';
import 'package:book_app/Features/home/presintation/views/home_view.dart';
import 'package:book_app/Features/search/presentation/view/search_view.dart';
import 'package:book_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class RouterAcsses {
  static final router = GoRouter(
     routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/SearchView',
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: '/HomeView',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/BookDetailsView',
      builder: (context, state) => const BookDetailsView(),
    ),
  ]);
}
