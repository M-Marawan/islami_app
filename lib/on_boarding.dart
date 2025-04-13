import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/utils/app_assets.dart';
import 'package:islami_app/utils/app_colors.dart';


class OnBoardingPage extends StatefulWidget {
    static String routname = "onBoarding";
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) =>  HomeScreen()),
    );
  }

 Widget _buildImage(String imagePath, [double width = 350]) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Image.asset(
      imagePath, 
      width: width,
      height: 250,  
      fit: BoxFit.contain,  
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0 , color: AppColors.mainColor);

    var pageDecoration = PageDecoration(
      titleTextStyle: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700 ,color: AppColors.mainColor),
      bodyTextStyle: bodyStyle,
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: AppColors.blackunvisible,
      imagePadding: EdgeInsets.zero,

  
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: AppColors.black,
      allowImplicitScrolling: true,
      
    globalHeader: SafeArea(
  child: Align(
    alignment: Alignment.topCenter,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 15), // Reduced top margin
        Image.asset(
          AppAssets.islaminBg,
          width: 220, // Slightly increased size
          fit: BoxFit.contain,
        ),
        SizedBox(height: 20), // Reduced spacing
      ],
    ),
  ),
),



      
      
      pages: [
        PageViewModel(
          
          title: "",
          body:
              "Welcome to islami app ",
          image: _buildImage(AppAssets.ONB1),
          decoration: pageDecoration,

        ),
        PageViewModel(
          title: "Welcome To Islami",
          body:
              "We Are Very Excited To Have You In Our Community",
          image: _buildImage(AppAssets.ONB2),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Reading the Quran",
          body:
              "Read, and your Lord is the Most Generous",
          image: _buildImage(AppAssets.ONB3),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Bearish",
          body:
              "Praise the name of your Lord, the Most High",
          image: _buildImage(AppAssets.ONB4),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Holy Quran Radio",
          body:
              "You can listen to the Holy Quran Radio through the application for free and easily",
          image: _buildImage(AppAssets.ONB5),
          decoration: pageDecoration,
        ),
       
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      // showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back , color: AppColors.white),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600 , color: AppColors.white)),
      next: const Icon(Icons.arrow_forward , color: AppColors.white),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600 , color: AppColors.white)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: AppColors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: AppColors.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}


 