import 'package:eat_app/constants/ui_helper.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/string_contants.dart';
import '../login and register/login_and_register.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentPage = 0;
  MiddleWare middleWare =MiddleWare();
  final PageController _pageController = PageController();

  final List<String> splashTexts = [
  landing_one_text,
  landing_second_text,
  landing_three_text,
  ];

  final List<String> next = [
    'Next',
    'Next',
    'Get Started',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification notification){
        notification.disallowIndicator();
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: currentPage == 2
                          ? Container()
                          : Text(
                        skip,
                        style: middleWare.customTextStyle(
                          16,
                          middleWare.uiThemeColor,
                          FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.5,
                      child: PageView(
                        controller: _pageController,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (value) {
                          setState(() {
                            currentPage = value;
                          });
                        },
                        children: const [
                          SplashImage(image: "assets/images/Frame1.png"),
                          SplashImage(image: "assets/images/Frame2.png"),
                          SplashImage(image: "assets/images/Frame3.png"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        splashTexts[currentPage],
                        textAlign: TextAlign.center,
                        style: middleWare.customTextStyle(
                            16, Colors.black, FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                            (index) => dotContainer(index: index),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (currentPage < 2) {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            } else {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                            }
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            next[currentPage],
                            style: middleWare.customTextStyle(
                                17, Colors.white, FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container dotContainer({int? index}) {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? middleWare.uiThemeColor : middleWare.uiThemeColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class SplashImage extends StatelessWidget {
  const SplashImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
