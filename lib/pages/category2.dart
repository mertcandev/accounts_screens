import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CategoryScreen2 extends StatefulWidget {
  const CategoryScreen2({Key? key}) : super(key: key);

  @override
  State<CategoryScreen2> createState() => _CategoryScreen2State();
}

class _CategoryScreen2State extends State<CategoryScreen2> {
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
  String kDefineText = "Define the budget start date and end date";
  String currentTimeText = Jiffy(DateTime.now()).format('dd MMM yy');

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
                  color: kBackgroundColor,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16))),
              height: 473.h,
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 61.5.h, bottom: 16.h),
                    child: SizedBox(
                      height: 32.h,
                      width: double.maxFinite,
                      child: Center(
                        child: Text(
                          "Confirm budget period",
                          style: GoogleFonts.poppins(
                              fontSize: 24.h,
                              fontWeight: FontWeight.w500,
                              color: kkWhiteTextColor),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 20.w, bottom: 33.h),
                    child: SizedBox(
                      height: 20.h,
                      child: Center(
                        child: Text(
                          kDefineText,
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
                    padding: EdgeInsets.only(left: 40.w, right: 40.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "From",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.inter(
                              fontSize: 12.h,
                              fontWeight: FontWeight.w400,
                              color: kkWhiteTextColor.withOpacity(0.7)),
                        ),
                        SizedBox(height: 16.h),
                        Container(
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
                                    child: DateTimePicker(
                                      dateMask: "dd MMM yy",
                                      style: GoogleFonts.inter(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w700,
                                          color: kkWhiteTextColor),
                                      decoration: InputDecoration(
                                          hintText: currentTimeText,
                                          hintStyle: GoogleFonts.inter(
                                              fontSize: 16.h,
                                              fontWeight: FontWeight.w700,
                                              color: kkWhiteTextColor),
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
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 40.w, right: 40.w, top: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "End",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.inter(
                              fontSize: 12.h,
                              fontWeight: FontWeight.w400,
                              color: kkWhiteTextColor.withOpacity(0.7)),
                        ),
                        SizedBox(height: 16.h),
                        Container(
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
                                    child: DateTimePicker(
                                      dateMask: "dd MMM yy",
                                      style: GoogleFonts.inter(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w700,
                                          color: kkWhiteTextColor),
                                      decoration: InputDecoration(
                                          hintText: currentTimeText,
                                          hintStyle: GoogleFonts.inter(
                                              fontSize: 16.h,
                                              fontWeight: FontWeight.w700,
                                              color: kkWhiteTextColor),
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
                                  borderRadius: BorderRadius.circular(30.sp),
                                  border: Border.all(color: kkWhiteTextColor)),
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
                                  borderRadius: BorderRadius.circular(30.sp),
                                  color: kkWhiteTextColor),
                              child: Center(
                                child: Text(
                                  "Next (2/6)",
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
              ));
        });
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
