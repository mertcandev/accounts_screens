import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CategoryScreen5 extends StatefulWidget {
  const CategoryScreen5({Key? key}) : super(key: key);

  @override
  State<CategoryScreen5> createState() => _CategoryScreen5State();
}

class _CategoryScreen5State extends State<CategoryScreen5> {
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
  String hintText = "Or enter new reference here";
  String choiceText =
      "Choose Existing Budget you previously created or enter a new Budget reference";
  var addIconColor = const Color(0xffFCE76B);
  String defineText = "Define the budget start date and end date";
  var bagIconColor = const Color(0xffFCE76B);
  String currentTimeText = Jiffy(DateTime.now()).format('dd MMM yy');
  String phaseText =
      "Here you will decide the frequency to which the amount you will budget is going to be repeated over the budget period.";

  List<Widget> centerButtons = [
    PhaseButton(
      isSelected: false,
      buttonLabel: "Daily",
    ),
    PhaseButton(
      isSelected: false,
      buttonLabel: "Weekly",
    ),
    PhaseButton(
      isSelected: false,
      buttonLabel: "Monthly",
    ),
    PhaseButton(
      isSelected: false,
      buttonLabel: "Yearly",
    ),
    PhaseButton(
      isSelected: false,
      buttonLabel: "One Time",
    ),
  ];

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
                  height: 544.h,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 53.h),
                        child: SizedBox(
                          height: 32.h,
                          width: double.maxFinite,
                          child: Center(
                            child: Text(
                              "Confirm the phasing...",
                              style: GoogleFonts.poppins(
                                  fontSize: 24.h,
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
                              phaseText,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  fontSize: 16.h,
                                  fontWeight: FontWeight.w400,
                                  color: kWhiteTextColor.withOpacity(0.7)),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 9.w, right: 9.w, top: 33.h, bottom: 16.h),
                        child: SizedBox(
                          height: 164.h,
                          width: 342..w,
                          child: Center(
                            child: MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: ListView(
                                children: [
                                  StatefulBuilder(
                                    builder: (context, setState) {
                                      return Wrap(
                                          alignment: WrapAlignment.center,
                                          runAlignment: WrapAlignment.center,
                                          spacing: 16.w,
                                          runSpacing: 16.h,
                                          direction: Axis.horizontal,
                                          children: centerButtons);
                                    },
                                  )
                                ],
                              ),
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
                              border:
                                  Border.all(color: kWhiteTextColor, width: 3),
                              borderRadius: BorderRadius.circular(8.sp)),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: DateTimePicker(
                                      dateMask: "dd MMM yy",
                                      style: GoogleFonts.inter(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w700,
                                          color: kWhiteTextColor),
                                      decoration: InputDecoration(
                                          hintText: currentTimeText,
                                          hintStyle: GoogleFonts.inter(
                                              fontSize: 16.h,
                                              fontWeight: FontWeight.w400,
                                              color: kWhiteTextColor),
                                          border: InputBorder.none),
                                      initialEntryMode:
                                          DatePickerEntryMode.calendarOnly,
                                      initialDatePickerMode:
                                          DatePickerMode.year,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2010),
                                      lastDate: DateTime(2030),
                                    ),
                                  ),
                                  CustomPaint(
                                    size: Size(18.w, 19.h),
                                    painter: BagIconPainter(),
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
                                      "Next (5/6)",
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

class PhaseButton extends StatefulWidget {
  PhaseButton({Key? key, required this.buttonLabel, required this.isSelected})
      : super(key: key);

  final String buttonLabel;
  bool isSelected = false;

  @override
  State<PhaseButton> createState() => _PhaseButtonState();
}

class _PhaseButtonState extends State<PhaseButton> {
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
      child: Container(
        height: 36.h,
        width: 120.w,
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
                fontSize: 14.h,
                fontWeight: widget.isSelected == true
                    ? FontWeight.w700
                    : FontWeight.w600,
                color: widget.isSelected == true
                    ? buttonWhiteColor
                    : buttonWhiteColor.withOpacity(0.7)),
          ),
        ),
      ),

      /* Chip(
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
        ) */
    );
  }
}

class BagIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(4.75006, 1.5);
    path_0.cubicTo(4.75006, 1.08579, 4.41427, 0.75, 4.00006, 0.75);
    path_0.cubicTo(3.58585, 0.75, 3.25006, 1.08579, 3.25006, 1.5);
    path_0.lineTo(3.25006, 3.31643);
    path_0.cubicTo(1.75699, 3.52751, 0.577438, 4.70845, 0.377761, 6.21484);
    path_0.lineTo(0.291209, 6.86779);
    path_0.cubicTo(0.276535, 6.97849, 0.262504, 7.08926, 0.249115, 7.20008);
    path_0.cubicTo(0.213599, 7.49405, 0.445204, 7.75, 0.74131, 7.75);
    path_0.lineTo(17.2588, 7.75);
    path_0.cubicTo(17.5549, 7.75, 17.7865, 7.49405, 17.7509, 7.20008);
    path_0.cubicTo(17.7376, 7.08926, 17.7235, 6.97849, 17.7089, 6.86779);
    path_0.lineTo(17.6223, 6.21484);
    path_0.cubicTo(17.4226, 4.70847, 16.2431, 3.52754, 14.7501, 3.31644);
    path_0.lineTo(14.7501, 1.5);
    path_0.cubicTo(14.7501, 1.08579, 14.4143, 0.75, 14.0001, 0.75);
    path_0.cubicTo(13.5858, 0.75, 13.2501, 1.08579, 13.2501, 1.5);
    path_0.lineTo(13.2501, 3.16763);
    path_0.cubicTo(10.4223, 2.9158, 7.5778, 2.9158, 4.75006, 3.16763);
    path_0.lineTo(4.75006, 1.5);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffFCE76B).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(17.9446, 9.72555);
    path_1.cubicTo(17.9359, 9.45912, 17.7157, 9.25, 17.4491, 9.25);
    path_1.lineTo(0.550927, 9.25);
    path_1.cubicTo(0.284356, 9.25, 0.0641901, 9.45912, 0.0554355, 9.72555);
    path_1.cubicTo(-0.0039631, 11.5332, 0.105839, 13.3446, 0.384573, 15.1359);
    path_1.cubicTo(0.595582, 16.4919, 1.69724, 17.5335, 3.06298, 17.6681);
    path_1.lineTo(4.25599, 17.7858);
    path_1.cubicTo(7.41103, 18.0969, 10.589, 18.0969, 13.7441, 17.7858);
    path_1.lineTo(14.9371, 17.6681);
    path_1.cubicTo(16.3028, 17.5335, 17.4045, 16.4919, 17.6155, 15.1359);
    path_1.cubicTo(17.8942, 13.3446, 18.004, 11.5332, 17.9446, 9.72555);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffFCE76B).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
