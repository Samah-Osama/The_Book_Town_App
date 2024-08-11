import 'package:booly_app/Features/home/presentaion/view/home_view.dart';
import 'package:booly_app/Features/spalsh_feature/presentaion/views/widgets/sliding_text.dart';
import 'package:booly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SpalshViewBody extends StatefulWidget {
  const SpalshViewBody({super.key});

  @override
  State<SpalshViewBody> createState() => _SpalshViewBodyState();
}

class _SpalshViewBodyState extends State<SpalshViewBody>
    with SingleTickerProviderStateMixin {
  // by7ded emta el value ttl3
  //based on el duration this single ticker will give me el values
  late AnimationController controller;
  late Animation<Offset> slidingAnimation;
//here i made declaration
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    controller.forward();
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(controller);
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, HomeView.id);

      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.leftToRightWithFade,
      //   duration: kTransitionDuration,
      // );
    });
  }
}
