import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
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
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingAnimationStar;
  @override
  void initState() {
    super.initState();
    //Solid principle : single responsibility principle
    //y3ni t3ml al class ms2ol 3n sh3'leh wahdeh nfs alshi ll function bt5leh ,ms2ol 3n sh3'leh wahdeh
    initSlidingAnimation();

    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // animationStarController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(seconds: 1),
    // );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);

    slidingAnimationStar =
        Tween<Offset>(begin: const Offset(-3, 0), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
    // slidingAnimation.addListener(() {  // we don't need setState becaue we do AnimatedBuilder to the widget
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          // Image.asset(AssetsData.starLogo),
          const SizedBox(
            height: 8,
          ),
          SlidingText(slidingAnimation: slidingAnimation),
          SlideTransition(
            position: slidingAnimationStar,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//move this to dir widget
class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) => SlideTransition(
        position: slidingAnimation,
        child: const Text(
          'read free box',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
