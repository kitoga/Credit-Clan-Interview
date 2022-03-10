import 'package:credit_clan_test/pages/card_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () {
          return Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.maxFinite,
                color: Colors.amber,
                child: Image.asset(
                  'assets/images/menu-bg.png',
                  fit: BoxFit.cover,
                  scale: 1.0,
                ),
              ),
              Positioned(
                top: 50,
                left: 20.w,
                child: Container(
                  height: 55.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.menu,
                    size: 24.r,
                    color: Color(0xff325ED8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 265.h, bottom: 0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 170),
                    child: SingleChildScrollView(
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50.h,
                                      width: 50.w,
                                      //color: Colors.amber,
                                      child: Image.asset(
                                        'assets/images/money-bag.png',
                                        fit: BoxFit.contain,
                                        scale: 1.0,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text(
                                      'Cashback',
                                      style: GoogleFonts.montserrat(
                                          color: const Color(0xff25265E)
                                              .withOpacity(.47),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      '\$200.54',
                                      style: GoogleFonts.montserrat(
                                        color: const Color(0xff25265E),
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 150.h,
                                  width: 2,
                                  color:
                                      const Color(0xff25265E).withOpacity(.10),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50.h,
                                      width: 50.w,
                                      child: Image.asset(
                                        'assets/images/setting-wallet.png',
                                        fit: BoxFit.contain,
                                        scale: 1.0,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text(
                                      'Safe Deposit',
                                      style: GoogleFonts.montserrat(
                                          color: const Color(0xff25265E)
                                              .withOpacity(.47),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      '\$12,800.64',
                                      style: GoogleFonts.montserrat(
                                        color: const Color(0xff25265E),
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 4),
                            child: Container(
                              height: 200,
                              width: double.maxFinite,
                              //color: Colors.amber,
                              child: ListView.builder(
                                shrinkWrap: false,
                                itemCount: 1,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Today',
                                            style: GoogleFonts.montserrat(
                                                color: const Color(0xff25265E),
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  visible = !visible;
                                                });
                                              },
                                              icon: visible
                                                  ? const Icon(
                                                      Icons.expand_more,
                                                      color: Color(
                                                        0xff25265E,
                                                      ),
                                                    )
                                                  : const Icon(
                                                      Icons.expand_less,
                                                      color: Color(
                                                        0xff25265E,
                                                      ),
                                                    ))
                                        ],
                                      ),
                                      Visibility(
                                        visible: visible,
                                        child: Column(
                                          children: [
                                            Divider(
                                              color: const Color(0xff25265E)
                                                  .withOpacity(.1),
                                              height: 1,
                                              thickness: 1.5,
                                            ),
                                            SizedBox(height: 10.h),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Steam Store',
                                                  style: GoogleFonts.montserrat(
                                                      color: const Color(
                                                          0xff25265E),
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  '-\$19.99',
                                                  style: GoogleFonts.montserrat(
                                                      color: Colors.red,
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 130.h,
                left: 20.w,
                right: 20.w,
                child: GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => CardScreen()));
                  }),
                  child: Container(
                    height: 320.h,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      //color: Colors.amber,
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black,
                      //     blurRadius: 10.0,
                      //     spreadRadius: 0.5,
                      //     offset: Offset(0.3, 0.4),
                      //   )
                      // ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 30.h,
                          bottom: 20.h,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 170.h,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(55, 0, 0, 0),
                                  blurRadius: 10.0,
                                  spreadRadius: 0.1,
                                  offset: Offset(0.2, 0.7),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Josuke Jotaro',
                                          style: GoogleFonts.montserrat(
                                              color: const Color(0xff25265E),
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          '@jojojotaro',
                                          style: GoogleFonts.montserrat(
                                              color: const Color(0xff25265E)
                                                  .withOpacity(.47),
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 50,
                                    color: const Color(0xff25265E)
                                        .withOpacity(.10),
                                    thickness: 2,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Available balance',
                                        style: GoogleFonts.montserrat(
                                            color: const Color(0xff25265E)
                                                .withOpacity(.47),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Container(
                                        child: Image.asset(
                                            'assets/images/visa-logo.png'),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    '\$12,496.00',
                                    style: GoogleFonts.montserrat(
                                        color: const Color(0xff25265E),
                                        fontSize: 28.sp,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  SizedBox(height: 35.h),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '****',
                                          style: GoogleFonts.montserrat(
                                              color: const Color(0xff25265E)
                                                  .withOpacity(.70),
                                              fontSize: 23.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '****',
                                          style: GoogleFonts.montserrat(
                                              color: const Color(0xff25265E)
                                                  .withOpacity(.70),
                                              fontSize: 23.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '****',
                                          style: GoogleFonts.montserrat(
                                              color: const Color(0xff25265E)
                                                  .withOpacity(.70),
                                              fontSize: 23.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '2077',
                                          style: GoogleFonts.montserrat(
                                              color: const Color(0xff25265E)
                                                  .withOpacity(.70),
                                              fontSize: 23.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 20.w,
                          child: Container(
                            height: 130.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                            child: Image.asset(
                              'assets/images/woman.png',
                              fit: BoxFit.contain,
                              scale: 1.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class ExpandedContainer extends StatelessWidget {
  const ExpandedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.maxFinite,
      color: Colors.amber,
      child: Flexible(
        child: ListView.builder(
          itemCount: 30,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return const Text('data');
          },
        ),
      ),
    );
  }
}



// Expanded(
//                             child: Container(
//                               height: MediaQuery.of(context).size.height,
//                               width: double.maxFinite,
//                               child: ListView.builder(
//                                 shrinkWrap: true,
//                                 physics: NeverScrollableScrollPhysics(),
//                                 itemCount: 2,
//                                 itemBuilder: (BuildContext context, int index) {
//                                   return Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       Text(
//                                         '\$12,800.64',
//                                         style: TextStyle(
//                                             color: const Color(0xff25265E),
//                                             fontSize: 24.sp,
//                                             fontWeight: FontWeight.w800),
//                                       ),
//                                       SizedBox(width: 10.w),
//                                       IconButton(
//                                           onPressed: () {},
//                                           icon: Icon(
//                                             Icons.arrow_drop_down_circle,
//                                             color: Color(
//                                               0xff25265E,
//                                             ),
//                                           ))
//                                     ],
//                                   );
//                                 },
//                               ),
//                             ),
//                           )