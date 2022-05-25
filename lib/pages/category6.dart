import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CategoryScreen6 extends StatefulWidget {
  const CategoryScreen6({Key? key}) : super(key: key);

  @override
  State<CategoryScreen6> createState() => _CategoryScreen6State();
}

class _CategoryScreen6State extends State<CategoryScreen6> {
  bool notificationVisibility = true;
  static const kMainBackgroundColor = Color(0xffffffff);
  final String avatarImgPath = "assets/avatar.png";
  final String headerButtonText = "USD";
  final Color kMainBlackTextColor = const Color(0xff090A0A);
  final Color kMainGreyTextColor = const Color(0xff979C9E);
  final Color kMainkWhiteTextColor = const Color(0xffffffff);
  final Color kHeaderCurrencyButtonColor = const Color(0xffF45655);
  final Color kHeaderCurrencyButtonTextColor = const Color(0xffffffff);

  final Color kActualFillColor = const Color(0xffFFB323);
  final Color kBudgetFillColor = const Color(0xffEEEEEE);
  final Color kUpdateBudgetButtonColor = const Color(0xffFFB323);
  final Color kCircularButtonColor = const Color(0xffFFB323).withOpacity(0.1);
  final Color kCircularButtonIconColor = const Color(0xffFF9717);
  final Color kkBottomSheetBackgroundColor = const Color(0xff5BEFBD);
  final Color buttonLightColor = const Color(0xffffffff);
  final Color buttonGreenColor = const Color(0xff5BEFBD);

  final Color backgroundColor = const Color(0xff5BEFBD);
  final Color kWhiteTextColor = const Color(0xffFFFFFF);
  static String dragText = "Drag the on the circle to update the Budget amount";
  

  @override
  Widget build(BuildContext context) {
    List<String> choices = [
      "PERSONAL",
      "WEEKLY",
      "EXPENSE",
      "Y 2022 BUD",
      "JAN22 - DEC22"
    ];
    List<Widget> choiceButtons = [
      ChipButton1(
          choices: choices,
          backgroundColor: backgroundColor,
          kWhiteTextColor: kWhiteTextColor,
          index: 0),
      ChipButton1(
          choices: choices,
          backgroundColor: backgroundColor,
          kWhiteTextColor: kWhiteTextColor,
          index: 1),
      ChipButton1(
          choices: choices,
          backgroundColor: backgroundColor,
          kWhiteTextColor: kWhiteTextColor,
          index: 2),
      ChipButton1(
          choices: choices,
          backgroundColor: backgroundColor,
          kWhiteTextColor: kWhiteTextColor,
          index: 3),
      ChipButton1(
          choices: choices,
          backgroundColor: backgroundColor,
          kWhiteTextColor: kWhiteTextColor,
          index: 4),
    ];

    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: kMainBackgroundColor,
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 55.h, left: 24.w, right: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 30.w),
                  child: Stack(
                    children: [
                      Container(
                        height: 36.h,
                        width: 36.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(avatarImgPath)),
                            shape: BoxShape.circle),
                      ),
                      Positioned(
                          right: 1.5,
                          top: 1.5,
                          child: Visibility(
                              visible: notificationVisibility,
                              child: Container(
                                height: 8.h,
                                width: 8.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Center(
                                    child: Container(
                                  height: 6.h,
                                  width: 6.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFF5247)),
                                )),
                              )))
                    ],
                  )),
              Text("Swipe",
                  style: GoogleFonts.poppins(
                      fontSize: 20.h,
                      fontWeight: FontWeight.w500,
                      color: kMainBlackTextColor)),
              Container(
                height: 32.h,
                width: 66.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48.sp),
                    color: kHeaderCurrencyButtonColor),
                child: Center(
                  child: Text(
                    headerButtonText,
                    style: GoogleFonts.poppins(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w700,
                        color: kHeaderCurrencyButtonTextColor),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: 12.w, right: 12.w, bottom: 12.h, top: 22.h),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.818,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              color: kkBottomSheetBackgroundColor,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 31.h, left: 23.w, bottom: 15.h),
                  child: SizedBox(
                    height: 15.h,
                    width: double.maxFinite,
                    child: Text(
                      "Budget parameters",
                      style: GoogleFonts.poppins(
                          fontSize: 14.h,
                          fontWeight: FontWeight.w400,
                          color: kWhiteTextColor.withOpacity(0.7)),
                    ),
                  ),
                ),
                Expanded(
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 23.w, right: 16.w),
                          child: SizedBox(
                              width: 300.w,
                              child: Wrap(
                                  alignment: WrapAlignment.center,
                                  runAlignment: WrapAlignment.center,
                                  spacing: 10,
                                  runSpacing: 5,
                                  direction: Axis.horizontal,
                                  children: choiceButtons)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                          child: SizedBox(
                            height: 320.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 66.w,
                                  width: 184.h,
                                  child: Center(
                                    child: Text(
                                      dragText,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontSize: 14.h,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              kWhiteTextColor.withOpacity(0.7)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 25.h),
                                  child: Stack(children: [
                                    SleekCircularSlider(
                                        innerWidget: (value) {
                                          return const Center(child: Text(""));
                                        },
                                        onChange: (value) {},
                                        initialValue: 300,
                                        min: 0,
                                        max: 1000,
                                        appearance: CircularSliderAppearance(
                                            counterClockwise: true,
                                            startAngle: 180,
                                            angleRange: 360,
                                            customWidths: CustomSliderWidths(
                                                trackWidth: 20.h,
                                                progressBarWidth: 20.h,
                                                handlerSize: 0.h,
                                                shadowWidth: 0),
                                            size: 163.h,
                                            customColors: CustomSliderColors(
                                                progressBarColor:
                                                    const Color(0xffFE7886),
                                                dotColor:
                                                    const Color(0xffFADB28),
                                                trackColor:
                                                    const Color(0xffCDD0D2)
                                                        .withOpacity(0.38)))),
                                    SleekCircularSlider(
                                        innerWidget: (value) {
                                          return Center(
                                              child: Text(
                                            value.floor().toString(),
                                            style: GoogleFonts.poppins(
                                              fontSize: 28.h,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xff979C9E),
                                            ),
                                          ));
                                        },
                                        onChange: (value) {},
                                        initialValue: 450,
                                        min: 0,
                                        max: 1000,
                                        appearance: CircularSliderAppearance(
                                            startAngle: 180,
                                            angleRange: 180,
                                            customWidths: CustomSliderWidths(
                                                trackWidth: 20.h,
                                                progressBarWidth: 20.h,
                                                handlerSize: 12.h,
                                                shadowWidth: 0),
                                            size: 163.h,
                                            customColors: CustomSliderColors(
                                                progressBarColor:
                                                    const Color(0xffFADB28),
                                                dotColor:
                                                    const Color(0xffF45655),
                                                trackColor:
                                                    Colors.transparent))),
                                  ]),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 32.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 15.h,
                                            width: 15.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4.sp),
                                              color: const Color(0xffFADB28),
                                            ),
                                          ),
                                          SizedBox(width: 8.w),
                                          Text(
                                            "Actual",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12.h,
                                                fontWeight: FontWeight.w500,
                                                color: kMainGreyTextColor),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 20.w),
                                      Row(
                                        children: [
                                          Container(
                                            height: 15.h,
                                            width: 15.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4.sp),
                                              color: const Color(0xffFE7886),
                                            ),
                                          ),
                                          SizedBox(width: 8.w),
                                          Text(
                                            "Budget",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12.h,
                                                fontWeight: FontWeight.w500,
                                                color: kMainGreyTextColor),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, right: 18.w, bottom: 8.h, top: 15.w),
                        child: Container(
                          height: 48.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.sp),
                              color: buttonLightColor),
                          child: Center(
                            child: Text(
                              "SAVE AND UPDATE THE DASHBOARD",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.w,
                                  fontWeight: FontWeight.w700,
                                  color: buttonGreenColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 18.w, right: 18.w, bottom: 16.h),
                        child: Container(
                          height: 48.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.sp),
                              border: Border.all(
                                  color: buttonLightColor.withOpacity(0.7))),
                          child: Center(
                            child: Text(
                              "BACK",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.w,
                                  fontWeight: FontWeight.w500,
                                  color: buttonLightColor.withOpacity(0.7)),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class ChipButton1 extends StatelessWidget {
  const ChipButton1(
      {Key? key,
      required this.choices,
      required this.backgroundColor,
      required this.kWhiteTextColor,
      required this.index})
      : super(key: key);

  final List<String> choices;
  final Color backgroundColor;
  final Color kWhiteTextColor;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        choices[index],
      ),
      backgroundColor: backgroundColor,
      side: BorderSide(color: kWhiteTextColor, width: 3),
      labelStyle: GoogleFonts.poppins(
          fontSize: 14.h, fontWeight: FontWeight.w700, color: kWhiteTextColor),
    );
  }
}
