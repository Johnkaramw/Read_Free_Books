import 'package:book_app/Features/splash/presentation/views/widget/slaiding_Text.dart';
import 'package:book_app/core/help/Assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slaidshow;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeViewPage();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AsseetData.logo,
          height: 261,
          width: 261,
        ),
        const SizedBox(
          height: 8,
        ),
        slaidingText(slaidshow: slaidshow),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    slaidshow = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigateToHomeViewPage() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(() => const HomeView(),
      // transition:  Transition.downToUp,
      // );
      GoRouter.of(context).push('/HomeView');
    });
  }
}
