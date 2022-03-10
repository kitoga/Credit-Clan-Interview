import 'package:credit_clan_test/page_navigator.dart';
import 'package:credit_clan_test/utils/dimensions.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController(viewportFraction: 0.85);
  double _currentPageValue = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('current height is:' + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: ScreenUtilInit(
        designSize: Size(375, 812),
        builder: () {
          return Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/bg.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 100.h,
                left: 0.w,
                right: 0.w,
                child: Container(
                  height: 140.h,
                  width: double.infinity,
                  //color: Colors.amber,
                  child: ListView(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0, left: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          //color: Colors.pink,
                          child: Text(
                            'Smart\nSavings',
                            style: GoogleFonts.frankRuhlLibre(
                              fontSize: 45.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0, left: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          //color: Colors.pink,
                          child: Text(
                            'Smart\nCredit',
                            style: GoogleFonts.frankRuhlLibre(
                              fontSize: 45.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0, left: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          //color: Colors.pink,
                          child: Text(
                            'Smart\nPayment',
                            style: GoogleFonts.frankRuhlLibre(
                              fontSize: 45.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 50.h,
                left: 15.w,
                right: 20.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DotsIndicator(
                      dotsCount: 3,
                      position: _currentPageValue,
                      decorator: const DotsDecorator(
                        sizes: [
                          Size.square(12.0),
                          Size.square(12.0),
                          Size.square(12.0),
                        ],
                        activeSizes: [
                          Size.square(12.0),
                          Size.square(12.0),
                          Size.square(12.0),
                        ],
                        color: Colors.white54, // Inactive color
                        activeColor: Color(0xffF26014),
                      ),
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => PageNavigatorScreen()));
                      }),
                      child: Row(
                        children: [
                          Text(
                            'Start Now',
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 7),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
