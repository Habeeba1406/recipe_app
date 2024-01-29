import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class introPage extends StatefulWidget {
  const introPage({super.key});

  @override
  State<introPage> createState() => _introPageState();
}

class _introPageState extends State<introPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              'Welcome  to RecipeBook',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
                "Your Personal recipe organiser and planner.Store Your recipes on the recipeBook...",
            image: Image.asset(
              "assets/images/images (1).jpeg",
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'Welcome  to RecipeBook',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
                "Your Personal recipe organiser and planner.Store Your recipes on the recipeBook...",
            image: Image.asset(
              "assets/images/images (1).jpeg",
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'Quick and Easy Recipes',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
                "Your Personal recipe organiser and planner.Store Your recipes on the recipeBook...",
            image: Image.asset(
              "assets/images/images (1).jpeg",
              height: 400,
              width: 400,
            ),
          ),
        ],
        onDone: () {
          Navigator.pushNamed(context, 'home');
        },
        onSkip: () {
          Navigator.pushNamed(context, 'home');
        },
        showSkipButton: true,
        skip: Text(
          'Skip',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.deepOrange,
          ),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: Colors.deepOrange,
        ),
        done: Text(
          'Done',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.deepOrange,
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20, 10),
          color: Colors.black26,
          activeColor: Colors.deepOrange,
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
