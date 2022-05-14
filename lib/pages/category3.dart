import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CategoryScreen3 extends StatefulWidget {
  CategoryScreen3({Key? key}) : super(key: key);
  bool expenseSelected = true;
  bool incomeSelected = false;

  @override
  State<CategoryScreen3> createState() => _CategoryScreen3State();
}

class _CategoryScreen3State extends State<CategoryScreen3> {
  bool notificationVisibility = true;
  static const kMainBackgroundColor = Color(0xffffffff);
  final String avatarImgPath = "assets/avatar.png";
  final String headerButtonText = "USD";
  final Color kMainBlackTextColor = const Color(0xff090A0A);
  final Color kMainGreyTextColor = const Color(0xff979C9E);
  final Color kMainkWhiteTextColor = const Color(0xffffffff);
  final Color kHeaderCurrencyButtonColor = const Color(0xffF45655);
  final Color kHeaderCurrencyButtonTextColor = const Color(0xffffffff);
  final String kBudgetText = "Budget";
  final String kBudgetMoney = "300.00";
  final Color kActualFillColor = const Color(0xffFFB323);
  final Color kBudgetFillColor = const Color(0xffEEEEEE);
  final Color kUpdateBudgetButtonColor = const Color(0xffFFB323);
  final Color kCircularButtonColor = const Color(0xffFFB323).withOpacity(0.1);
  final Color kCircularButtonIconColor = const Color(0xffFF9717);

  final Color backgroundColor = const Color(0xff5BEFBD);
  final Color kWhiteTextColor = const Color(0xffFFFFFF);
  final Color buttonWhiteColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
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
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 25.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(kBudgetText,
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
            child: Text(kBudgetMoney,
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
          /* SizedBox(
            height: 50,
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14.h,
                      fontWeight: FontWeight.w400,
                      color: kWhiteTextColor.withOpacity(0.8))),
            ),
          ), */
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

  Future<dynamic> _showModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (context, setState) => Container(
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16))),
                  height: 333.h,
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 61.5.h, bottom: 16.h),
                        child: SizedBox(
                          height: 32.h,
                          width: double.maxFinite,
                          child: Center(
                            child: Text(
                              "Expense or income",
                              style: GoogleFonts.poppins(
                                  fontSize: 24.h,
                                  fontWeight: FontWeight.w500,
                                  color: kWhiteTextColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 114.h,
                        width: 280.w,
                        child: Column(
                          children: [
                            StatefulBuilder(
                              builder: (context, setState) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      widget.expenseSelected =
                                          !widget.expenseSelected;
                                    });
                                  },
                                  child: Container(
                                    height: 48.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.sp),
                                        border: Border.all(
                                            color:
                                                widget.expenseSelected == true
                                                    ? buttonWhiteColor
                                                    : buttonWhiteColor
                                                        .withOpacity(0.7),
                                            width:
                                                widget.expenseSelected == true
                                                    ? 3
                                                    : 1)),
                                    child: Center(
                                      child: Text(
                                        "EXPENSE",
                                        style: GoogleFonts.poppins(
                                            fontSize: 16.h,
                                            fontWeight: FontWeight.w700,
                                            color:
                                                widget.expenseSelected == true
                                                    ? buttonWhiteColor
                                                    : buttonWhiteColor
                                                        .withOpacity(0.7)),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: 8.h),
                            StatefulBuilder(
                              builder: (context, setState) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      widget.incomeSelected =
                                          !widget.incomeSelected;
                                    });
                                  },
                                  child: Container(
                                    height: 48.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.sp),
                                        border: Border.all(
                                            color: widget.incomeSelected == true
                                                ? buttonWhiteColor
                                                : buttonWhiteColor
                                                    .withOpacity(0.7),
                                            width: widget.incomeSelected == true
                                                ? 3
                                                : 1)),
                                    child: Center(
                                      child: Text(
                                        "INCOME",
                                        style: GoogleFonts.poppins(
                                            fontSize: 16.h,
                                            fontWeight: FontWeight.w700,
                                            color: widget.incomeSelected == true
                                                ? buttonWhiteColor
                                                : buttonWhiteColor
                                                    .withOpacity(0.7)),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 50.h, left: 16.5.w, right: 16.5.w),
                        child: SizedBox(
                          height: 48.h,
                          width: 327.w,
                          child: Row(
                            children: [
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
                                      border:
                                          Border.all(color: kWhiteTextColor)),
                                  child: Center(
                                    child: Text(
                                      "Back",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w500,
                                          color: kWhiteTextColor),
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
                                      color: kWhiteTextColor),
                                  child: Center(
                                    child: Text(
                                      "Next (3/6)",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w500,
                                          color: backgroundColor),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )));
        });
  }
}

class EIButton extends StatefulWidget {
  final String buttonLabel;
  bool expenseSelected = false;
  bool incomeSelected = false;
  EIButton(
      {Key? key,
      required this.expenseSelected,
      required this.buttonLabel,
      required this.incomeSelected})
      : super(key: key);

  @override
  State<EIButton> createState() => _EIButtonState();
}

class _EIButtonState extends State<EIButton> {
  final Color buttonWhiteColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.expenseSelected = !widget.expenseSelected;
            widget.incomeSelected = !widget.incomeSelected;
          });
        },
        child: Container(
          height: 48.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.sp),
              border: Border.all(
                  color: widget.expenseSelected == true
                      ? buttonWhiteColor
                      : buttonWhiteColor.withOpacity(0.7),
                  width: widget.expenseSelected == true ? 3 : 1)),
          child: Center(
            child: Text(
              widget.buttonLabel,
              style: GoogleFonts.poppins(
                  fontSize: 16.h,
                  fontWeight: FontWeight.w700,
                  color: widget.expenseSelected == true
                      ? buttonWhiteColor
                      : buttonWhiteColor.withOpacity(0.7)),
            ),
          ),
        ),
      ),
    );
  }
}
