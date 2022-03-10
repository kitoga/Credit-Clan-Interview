import 'dart:ui';

import 'package:credit_clan_test/pages/fl_chart-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatefulWidget {
  CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen>
    with SingleTickerProviderStateMixin {
  //for tabBarView controlling//
  int index = 0;
  late TabController page;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    page = TabController(
      length: 4,
      vsync: this,
    )..addListener(() {
        setState(() {
          index = page.index;
        });
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    page.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () {
        return SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xff325ED8),
                      size: 26,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    'Spendings',
                    style: GoogleFonts.montserrat(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff25265E).withOpacity(.4),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '\$2,400.56',
                        style: GoogleFonts.montserrat(
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff25265E),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xff1CD5CF),
                                // size: 30,
                              ),
                              Text(
                                '12%',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff1CD5CF),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'vs past month',
                            style: GoogleFonts.montserrat(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff25265E).withOpacity(.4),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            page.animateTo(0);
                          });
                        },
                        child: Container(
                          height: 45.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            color: page.index == 0
                                ? Color(0xff5D0CE1)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              'Day',
                              style: GoogleFonts.montserrat(
                                color: page.index == 0
                                    ? Color(0xffFFFFFF)
                                    : Color(0xff25265E).withOpacity(.40),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            page.animateTo(1);
                          });
                        },
                        child: Container(
                          height: 45.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: page.index == 1
                                ? Color(0xff5D0CE1)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              'Week',
                              style: GoogleFonts.montserrat(
                                color: page.index == 1
                                    ? Color(0xffFFFFFF)
                                    : Color(0xff25265E).withOpacity(.4),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            page.animateTo(2);
                          });
                        },
                        child: Container(
                          height: 45.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: page.index == 2
                                ? Color(0xff5D0CE1)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              'Month',
                              style: GoogleFonts.montserrat(
                                color: page.index == 2
                                    ? Color(0xffFFFFFF)
                                    : Color(0xff25265E).withOpacity(.4),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            page.animateTo(3);
                          });
                        },
                        child: Container(
                          height: 45.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: page.index == 3
                                ? Color(0xff5D0CE1)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              'Custom',
                              style: GoogleFonts.montserrat(
                                color: page.index == 3
                                    ? Color(0xffFFFFFF)
                                    : Color(0xff25265E).withOpacity(.4),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 230.h,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: page,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: LineChartSample1(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: LineChartSample1(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: LineChartSample1(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: LineChartSample1(),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Scheduled payments',
                              style: GoogleFonts.montserrat(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff32027E),
                              ),
                            ),
                            const Icon(Icons.arrow_forward_ios_outlined,
                                size: 16)
                          ],
                        ),
                        Visibility(
                          child: Column(
                            children: [
                              SizedBox(height: 15.h),
                              const Divider(
                                height: 30,
                                thickness: 2,
                                color: Color(0xffE8E8E9),
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      height: 58.h,
                                      width: 64.w,
                                      color: Colors.red,
                                      child: const Icon(
                                        FeatherIcons.youtube,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Youtube Red',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff32027E),
                                        ),
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        'Next payment: 12/02',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff25265E)
                                              .withOpacity(.40),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 50.w),
                                  Text(
                                    '\$3.99/mth',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff32027E)
                                          .withOpacity(.70),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              //second phase
                              const Divider(
                                height: 30,
                                thickness: 2,
                                color: Color(0xffE8E8E9),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      height: 58.h,
                                      width: 64.w,
                                      color: Colors.black,
                                      child: const Icon(
                                        FeatherIcons.github,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Github',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff32027E),
                                        ),
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        'Next payment: 12/02',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff25265E)
                                              .withOpacity(.40),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 50.w),
                                  Text(
                                    '\$2.99/mth',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff32027E)
                                          .withOpacity(.70),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
