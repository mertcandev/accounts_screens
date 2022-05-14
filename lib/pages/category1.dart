// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CategoryScreen1 extends StatefulWidget {
  const CategoryScreen1({Key? key}) : super(key: key);

  @override
  State<CategoryScreen1> createState() => _CategoryScreen1State();
}

class _CategoryScreen1State extends State<CategoryScreen1> {
  bool notificationVisibility = true;
  static const kMainBackgroundColor = Color(0xffffffff);
  final String kavatarImgPath = "assets/avatar.png";
  final String kheaderButtonText = "USD";
  final Color kMainBlackTextColor = const Color(0xff090A0A);
  final Color kMainGreyTextColor = const Color(0xff979C9E);
  final Color kMainkWhiteTextColor = const Color(0xffffffff);
  final Color kHeaderCurrencyButtonColor = const Color(0xffF45655);
  final Color kHeaderCurrencyButtonTextColor = const Color(0xffffffff);
  final String kkBudgetText = "Budget";
  final String kkBudgetMoney = "300.00";
  final Color kActualFillColor = const Color(0xffFFB323);
  final Color kBudgetFillColor = const Color(0xffEEEEEE);
  final Color kUpdateBudgetButtonColor = const Color(0xffFFB323);
  final Color kCircularButtonColor = const Color(0xffFFB323).withOpacity(0.1);
  final Color kCircularButtonIconColor = const Color(0xffFF9717);

  var kBackgroundColor = const Color(0xff5BEFBD);
  var kkWhiteTextColor = const Color(0xffFFFFFF);
  String hintText = "Or enter new reference here";
  final String chooseHeader = "Choose budget...";

  String choiceText =
      "Choose Existing Budget you previously created or enter a new Budget reference";
  var addIconColor = const Color(0xffFCE76B);
  String value = "";

  List<Widget> budgetButtons = [
    BudgetButton(
      isSelected: false,
      buttonLabel: "Y 2021 BUD",
    ),
    BudgetButton(
      isSelected: false,
      buttonLabel: "YY 2022 BUD",
    ),
    BudgetButton(
      isSelected: false,
      buttonLabel: "PROJECT ABC BUD",
    )
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kMainBackgroundColor,
      body: SingleChildScrollView(
        child: Column(children: [
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
                                  image: AssetImage(kavatarImgPath)),
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
                      kheaderButtonText,
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
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 25.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(kkBudgetText,
                    style: GoogleFonts.poppins(
                        fontSize: 24.h,
                        fontWeight: FontWeight.w600,
                        color: kMainBlackTextColor)),
                const Spacer(),
                DropDown(
                  showUnderline: false,
                  items: const [
                    "item1",
                    "item2",
                  ],
                  hint: Text(
                    "All",
                    style: GoogleFonts.poppins(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w500,
                        color: kMainBlackTextColor),
                  ),
                ),
                SizedBox(width: 16.w),
                DropDown(
                  showUnderline: false,
                  items: const [
                    "item1",
                    "item2",
                  ],
                  hint: Text(
                    "Daily",
                    style: GoogleFonts.poppins(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w500,
                        color: kMainBlackTextColor),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 40.h,
            ),
            child: Text(kkBudgetMoney,
                style: GoogleFonts.poppins(
                    fontSize: 30.h,
                    fontWeight: FontWeight.w600,
                    color: kMainBlackTextColor)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.w, right: 13.w),
            child: SizedBox(
              height: 264.h,
              child: Column(
                children: [
                  SizedBox(
                    height: 194.h,
                    width: 194.w,
                    child: CircularPercentIndicator(
                      center: Text(
                        "70%",
                        style: GoogleFonts.roboto(
                            fontSize: 25.h,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff979C9E)),
                      ),
                      curve: Curves.easeInOut,
                      startAngle: 0.25,
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: kBudgetFillColor,
                      percent: 0.7,
                      animation: true,
                      animationDuration: 2500,
                      radius: 80.h,
                      lineWidth: 24,
                      rotateLinearGradient: false,
                      linearGradient: const LinearGradient(
                          colors: [Color(0xffFF8008), Color(0xffFFC837)]),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 14.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 20.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.sp),
                                    color: kActualFillColor,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "ACTUAL",
                                  style: GoogleFonts.inter(
                                      fontSize: 12.h,
                                      fontWeight: FontWeight.w500,
                                      color: kMainGreyTextColor),
                                )
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Container(
                                  height: 20.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.sp),
                                    color: kBudgetFillColor,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "BUDGET",
                                  style: GoogleFonts.inter(
                                      fontSize: 12.h,
                                      fontWeight: FontWeight.w500,
                                      color: kMainGreyTextColor),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 48.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.sp),
                            color: kUpdateBudgetButtonColor),
                        child: Center(
                          child: Text(
                            "Update budget",
                            style: GoogleFonts.inter(
                                fontSize: 16.h,
                                fontWeight: FontWeight.w500,
                                color: kMainkWhiteTextColor),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 23.w, right: 23.w, top: 20.h),
            child: Container(
              height: 48.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.sp),
                  color: kUpdateBudgetButtonColor),
              child: Center(
                  child: Text(
                "Review History",
                style: GoogleFonts.inter(
                    fontSize: 16.h,
                    fontWeight: FontWeight.w500,
                    color: kMainkWhiteTextColor),
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 28.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 39.h,
                  width: 39.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: kCircularButtonColor),
                  child: Center(
                      child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: kCircularButtonIconColor,
                    size: 12.h,
                  )),
                ),
                SizedBox(width: 59.w),
                Text(
                  "FOOD",
                  style: GoogleFonts.poppins(
                      fontSize: 16.h,
                      fontWeight: FontWeight.w700,
                      color: kMainBlackTextColor),
                ),
                SizedBox(width: 59.w),
                Container(
                  height: 39.h,
                  width: 39.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: kCircularButtonColor),
                  child: Center(
                      child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: kCircularButtonIconColor,
                    size: 12.h,
                  )),
                ),
              ],
            ),
          )
        ]),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () => _showModalBottomSheet(context)),
    );
  }

  Future<dynamic> _showModalBottomSheet<dynamc>(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        context: context,
        builder: (context) {
          return Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  color: kBackgroundColor),
              width: double.maxFinite,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SizedBox(
                  height: 515.h,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 53.h),
                        child: SizedBox(
                          height: 32.h,
                          width: double.maxFinite,
                          child: Center(
                            child: Text(
                              chooseHeader,
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: kkWhiteTextColor),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 18.w, right: 18.w, top: 16.w),
                        child: SizedBox(
                          height: 40.h,
                          child: Center(
                            child: Text(
                              choiceText,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  fontSize: 16.h,
                                  fontWeight: FontWeight.w400,
                                  color: kkWhiteTextColor.withOpacity(0.7)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 40.w, right: 40.w, bottom: 16.h, top: 16.h),
                        child: SizedBox(
                            height: 160.h,
                            width: 280.h,
                            child: StatefulBuilder(
                              builder: (context, setState) {
                                return ListView(
                                  physics: const BouncingScrollPhysics(),
                                  children: budgetButtons,
                                );
                              },
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 40.w, right: 40.w, bottom: 33.h),
                        child: Container(
                          height: 48.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: kkWhiteTextColor),
                              borderRadius: BorderRadius.circular(8.sp)),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: TextField(
                                      showCursor: false,
                                      style: GoogleFonts.poppins(
                                          fontSize: 14.h,
                                          fontWeight: FontWeight.w600,
                                          color: kkWhiteTextColor),
                                      onChanged: (text) {
                                        value = text;
                                      },
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: hintText,
                                          hintStyle: GoogleFonts.poppins(
                                              fontSize: 14.h,
                                              fontWeight: FontWeight.w400,
                                              color: kkWhiteTextColor
                                                  .withOpacity(0.8))),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      budgetButtons.add(BudgetButton(
                                          buttonLabel: value,
                                          isSelected: false));
                                    },
                                    child: Icon(
                                      Icons.add_box_rounded,
                                      color: addIconColor,
                                      size: 18.h,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 50.h),
                        child: SizedBox(
                          height: 48.h,
                          width: 327.w,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 155.w,
                                  height: 48.h,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(30.sp),
                                      border:
                                          Border.all(color: kkWhiteTextColor)),
                                  child: Center(
                                    child: Text(
                                      "Back",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w500,
                                          color: kkWhiteTextColor),
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  setState(() {});
                                },
                                child: Container(
                                  width: 155.w,
                                  height: 48.h,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(30.sp),
                                      color: kkWhiteTextColor),
                                  child: Center(
                                    child: Text(
                                      "Next (1/6)",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w500,
                                          color: kBackgroundColor),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ));
        });
  }
}

class BudgetButton extends StatefulWidget {
  BudgetButton({Key? key, required this.buttonLabel, required this.isSelected})
      : super(key: key);

  final String buttonLabel;
  bool isSelected = false;

  @override
  State<BudgetButton> createState() => _BudgetButtonState();
}

class _BudgetButtonState extends State<BudgetButton> {
  final Color buttonWhiteColor = const Color(0xffffffff);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.isSelected = !widget.isSelected;
          });
        },
        child: Container(
          height: 48.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.sp),
              border: Border.all(
                  color: widget.isSelected == true
                      ? buttonWhiteColor
                      : buttonWhiteColor.withOpacity(0.7),
                  width: widget.isSelected == true ? 3 : 1)),
          child: Center(
            child: Text(
              widget.buttonLabel,
              style: GoogleFonts.poppins(
                  fontSize: 16.h,
                  fontWeight: FontWeight.w700,
                  color: widget.isSelected == true
                      ? buttonWhiteColor
                      : buttonWhiteColor.withOpacity(0.7)),
            ),
          ),
        ),
      ),
    );
  }
}
