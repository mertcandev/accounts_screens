import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CategoryScreen4 extends StatefulWidget {
  const CategoryScreen4({Key? key}) : super(key: key);

  @override
  State<CategoryScreen4> createState() => _CategoryScreen4State();
}

class _CategoryScreen4State extends State<CategoryScreen4> {
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
  final Color kkBottomSheetBackgroundColor = const Color(0xff5BEFBD);

  var backgroundColor = const Color(0xff5BEFBD);
  var kWhiteTextColor = const Color(0xffFFFFFF);

  var addIconColor = const Color(0xffFCE76B);
  String defineText = "Define the budget start date and end date";
  var bagIconColor = const Color(0xffFCE76B);
  String currentTimeText = Jiffy(DateTime.now()).format('dd MMM yy');
  String hintText = "Or enter new reference here";
  String selectCenterText =
      "Cost can be your Personal Cost, Family Cost, Project Cost, Dependants Cost...";
  List<Widget> centerButtons = [
    CenterButton(
      isSelected: false,
      buttonLabel: "Personal",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "Family",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "Side Project",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "Work",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "Team",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "Start Up",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "University",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "World Tour",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "Other",
    ),
  ];

  String value = "";
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
                  color: backgroundColor),
              width: double.maxFinite,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SizedBox(
                  height: 526.h,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 53.h),
                        child: SizedBox(
                          height: 32.h,
                          width: double.maxFinite,
                          child: Center(
                            child: Text(
                              "Select Center",
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: kWhiteTextColor),
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
                              selectCenterText,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  fontSize: 16.h,
                                  fontWeight: FontWeight.w400,
                                  color: kWhiteTextColor.withOpacity(0.7)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 27.w, right: 27.w, top: 33.h, bottom: 16.h),
                        child: SizedBox(
                          height: 150.h,
                          width: 318.w,
                          child: MediaQuery.removePadding(
                            context: context,
                            removeTop: true,
                            child: ListView(
                              physics: const BouncingScrollPhysics(),
                              children: [
                                StatefulBuilder(
                                  builder: (context, setState) {
                                    return Wrap(
                                        alignment: WrapAlignment.center,
                                        runAlignment: WrapAlignment.start,
                                        spacing: 16.w,
                                        runSpacing: 8.h,
                                        direction: Axis.horizontal,
                                        children: centerButtons);
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 40.w, right: 40.w, bottom: 33.h),
                        child: Container(
                          height: 48.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: kWhiteTextColor),
                              borderRadius: BorderRadius.circular(8.sp)),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: TextField(
                                      showCursor: false,
                                      style: GoogleFonts.poppins(
                                          fontSize: 14.h,
                                          fontWeight: FontWeight.w600,
                                          color: kWhiteTextColor),
                                      onChanged: (text) {
                                        value = text;
                                      },
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: hintText,
                                          hintStyle: GoogleFonts.poppins(
                                              fontSize: 14.h,
                                              fontWeight: FontWeight.w400,
                                              color: kWhiteTextColor)),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Icon(Icons.add_box_rounded,
                                        color: addIconColor, size: 18.h),
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
                                      "Next (4 /6)",
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
                  ),
                ),
              ));
        });
  }
}

class CenterButton extends StatefulWidget {
  CenterButton({Key? key, required this.buttonLabel, required this.isSelected})
      : super(key: key);

  final String buttonLabel;
  bool isSelected = false;

  @override
  State<CenterButton> createState() => _CenterButtonState();
}

class _CenterButtonState extends State<CenterButton> {
  final Color buttonWhiteColor = const Color(0xffffffff);
  final Color backgroundColor = const Color(0xff5BEFBD);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            widget.isSelected = !widget.isSelected;
          });
        },
        child: /* Container(
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
      ), */

            Chip(
          backgroundColor: backgroundColor,
          label: Text(
            widget.buttonLabel,
          ),
          side: BorderSide(
              color: widget.isSelected == true
                  ? buttonWhiteColor
                  : buttonWhiteColor.withOpacity(0.7),
              width: widget.isSelected == true ? 3 : 1),
          labelStyle: GoogleFonts.poppins(
              fontSize: 14.h,
              fontWeight:
                  widget.isSelected == true ? FontWeight.w700 : FontWeight.w600,
              color: widget.isSelected == true
                  ? buttonWhiteColor
                  : buttonWhiteColor.withOpacity(0.7)),
        ));
  }
}
