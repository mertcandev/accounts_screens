import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAccount2 extends StatefulWidget {
  const ViewAccount2({Key? key}) : super(key: key);

  @override
  State<ViewAccount2> createState() => _ViewAccount2State();
}

class _ViewAccount2State extends State<ViewAccount2> {
  final String bankIconLogoPath = "assets/bankIconLogo.png";
  bool notificationVisibility = true;
  static const kMainBackgroundColor = Color(0xffffffff);
  final String avatarImgPath = "assets/avatar.png";
  final String headerButtonText = "USD";
  final Color kMainBlackTextColor = const Color(0xff090A0A);
  final Color kMainGreyTextColor = const Color(0xff979C9E);
  final Color kMainkWhiteTextColor = const Color(0xffffffff);
  final Color kHeaderCurrencyButtonColor = const Color(0xffF45655);
  final Color kHeaderCurrencyButtonTextColor = const Color(0xffffffff);

  final Color kTransferBoxColor = const Color(0xffFECD57);
  final Color kIncomeBoxColor = const Color(0xfff45655);
  final Color kSpendingBoxColor = const Color(0xff29A164);
  final Color kBottomSheetBackgroundColor = const Color(0xffffffff);
  final String enableLocationText = "Enable Location";
  final Color enableLocationTextColor = const Color(0xff404446);
  final String locationDetailText =
      "Allow location access to enjoy places and shops auto identification";
  final Color locationkDetailTextColor = const Color(0xff979C9E);
  final Color kInputBoxBorderColor = const Color(0xffE3E5E5);
  final String inputHintText = "Enter amount here";
  final Color kUpdateButtonColor = const Color(0xffFCE76B);
  final Color kLaterButtonColor = const Color(0xffCDCFD0);
  final Color kDividerColor = const Color(0xffF2F4F5);
  final String balanceAsOfDate = "11 Mar 2022";
  final Color kBalanceAsOfTextcolor = const Color(0xff979C9E);
  final Color kBalanceAsOfDateColor = const Color(0xff404446);
  final Color logoBackgroundColor = const Color(0xffC4C4C4).withOpacity(0.10);

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    height: 20.h,
                    width: 20.w,
                    color: Colors.transparent,
                    child: Center(
                      child: Icon(Icons.arrow_back_ios, size: 16.h),
                    )),
              ),
              Text("Add income transaction",
                  style: GoogleFonts.inter(
                      fontSize: 18.h, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 20.h,
                width: 20.w,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 24.h, left: 26.2, right: 11.w),
          child: SizedBox(
            height: 512.h,
            width: 323.w,
            child: Column(children: [
              GestureDetector(
                child: Container(
                  height: 160.h,
                  width: 323.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      color: kTransferBoxColor),
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      children: [
                        Text(
                          "Transfer\nBetween Accounts",
                          style: GoogleFonts.poppins(
                              fontSize: 18.h,
                              fontWeight: FontWeight.w700,
                              color: kMainkWhiteTextColor),
                        ),
                        const Spacer(),
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kMainkWhiteTextColor.withOpacity(0.3),
                          ),
                          child: Center(
                              child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: kMainkWhiteTextColor,
                            size: 14.h,
                          )),
                        )
                      ],
                    ),
                  )),
                ),
              ),
              SizedBox(height: 16.h),
              GestureDetector(
                child: Container(
                  height: 160.h,
                  width: 323.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      color: kIncomeBoxColor),
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      children: [
                        Text(
                          "Income",
                          style: GoogleFonts.poppins(
                              fontSize: 18.h,
                              fontWeight: FontWeight.w700,
                              color: kMainkWhiteTextColor),
                        ),
                        const Spacer(),
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kMainkWhiteTextColor.withOpacity(0.3),
                          ),
                          child: Center(
                              child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: kMainkWhiteTextColor,
                            size: 14.h,
                          )),
                        )
                      ],
                    ),
                  )),
                ),
              ),
              SizedBox(height: 16.h),
              GestureDetector(
                child: Container(
                  height: 160.h,
                  width: 323.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      color: kSpendingBoxColor),
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      children: [
                        Text(
                          "Spending",
                          style: GoogleFonts.poppins(
                              fontSize: 18.h,
                              fontWeight: FontWeight.w700,
                              color: kMainkWhiteTextColor),
                        ),
                        const Spacer(),
                        Container(
                          height: 32.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kMainkWhiteTextColor.withOpacity(0.3),
                          ),
                          child: Center(
                              child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: kMainkWhiteTextColor,
                            size: 14.h,
                          )),
                        )
                      ],
                    ),
                  )),
                ),
              )
            ]),
          ),
        )
      ])),
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
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.sp),
                      topRight: Radius.circular(16.sp)),
                  color: kBottomSheetBackgroundColor),
              width: double.maxFinite,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SizedBox(
                  height: 483.h,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 61.5.h),
                        child: Container(
                          height: 100.h,
                          width: 100.h,
                          decoration: BoxDecoration(
                            color: logoBackgroundColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: CustomPaint(
                            size: const Size(32, 38),
                            painter: LocationLogoPainter(),
                          )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 32.h),
                        child: SizedBox(
                          height: 30.h,
                          child: Center(
                              child: Text(
                            enableLocationText,
                            style: GoogleFonts.poppins(
                                fontSize: 24.h,
                                fontWeight: FontWeight.w500,
                                color: enableLocationTextColor),
                          )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 25.5.w, right: 25.5.w, top: 15.h),
                        child: SizedBox(
                          height: 40.h,
                          child: Center(
                              child: Text(
                            locationDetailText,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: 14.h,
                                fontWeight: FontWeight.w500,
                                color: locationkDetailTextColor),
                          )),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 24.w, right: 24.w, top: 32.h),
                        child: SizedBox(
                          height: 104.h,
                          child: Column(
                            children: [
                              Container(
                                height: 48.h,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.sp),
                                    color: kUpdateButtonColor),
                                child: Center(
                                  child: Text(
                                    "CONFIRM",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w500,
                                        color: kMainkWhiteTextColor),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Container(
                                height: 48.h,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.sp),
                                ),
                                child: Center(
                                    child: Text(
                                  "NO THANKS",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.h,
                                      fontWeight: FontWeight.w700,
                                      color: kLaterButtonColor),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 58.h,
                        width: double.maxFinite,
                      )
                    ],
                  ),
                ),
              ));
        });
  }
}

class LocationLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(22.3854, 11.2881);
    path_0.cubicTo(22.9152, 11.8179, 22.9152, 12.6768, 22.3854, 13.2065);
    path_0.lineTo(16.055, 19.537);
    path_0.cubicTo(15.5252, 20.0667, 14.6663, 20.0667, 14.1365, 19.537);
    path_0.lineTo(10.5191, 15.9196);
    path_0.cubicTo(9.98937, 15.3898, 9.98937, 14.5309, 10.5191, 14.0012);
    path_0.cubicTo(11.0489, 13.4714, 11.9078, 13.4714, 12.4375, 14.0012);
    path_0.lineTo(15.0957, 16.6594);
    path_0.lineTo(20.467, 11.2881);
    path_0.cubicTo(20.9967, 10.7584, 21.8557, 10.7584, 22.3854, 11.2881);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(0.670188, 13.7971);
    path_1.cubicTo(1.31106, 6.0222, 7.80819, 0.0385742, 15.6095, 0.0385742);
    path_1.lineTo(16.3907, 0.0385742);
    path_1.cubicTo(24.192, 0.0385742, 30.6891, 6.0222, 31.33, 13.7971);
    path_1.cubicTo(31.6743, 17.9737, 30.3842, 22.1208, 27.7314, 25.3651);
    path_1.lineTo(19.0622, 35.9673);
    path_1.cubicTo(17.4796, 37.9028, 14.5206, 37.9028, 12.938, 35.9673);
    path_1.lineTo(4.26878, 25.3651);
    path_1.cubicTo(1.61603, 22.1208, 0.325921, 17.9737, 0.670188, 13.7971);
    path_1.close();
    path_1.moveTo(15.6095, 2.75163);
    path_1.cubicTo(9.22016, 2.75163, 3.89895, 7.65227, 3.37407, 14.02);
    path_1.cubicTo(3.08755, 17.496, 4.16127, 20.9476, 6.36909, 23.6477);
    path_1.lineTo(15.0383, 34.2499);
    path_1.cubicTo(15.5354, 34.8579, 16.4648, 34.8579, 16.9619, 34.2499);
    path_1.lineTo(25.6311, 23.6477);
    path_1.cubicTo(27.8389, 20.9476, 28.9126, 17.496, 28.6261, 14.02);
    path_1.cubicTo(28.1012, 7.65227, 22.78, 2.75163, 16.3907, 2.75163);
    path_1.lineTo(15.6095, 2.75163);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
