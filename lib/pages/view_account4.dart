import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAccount4 extends StatefulWidget {
  const ViewAccount4({Key? key}) : super(key: key);

  @override
  State<ViewAccount4> createState() => _ViewAccount4State();
}

class _ViewAccount4State extends State<ViewAccount4> {
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
  final String photosText = "Enable Photos Access";
  final Color photosTextColor = const Color(0xff404446);
  final String photosDetailText =
      "Allow gallery access to enjoy adding photos to your transactions";
  final Color photoskDetailTextColor = const Color(0xff979C9E);
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
                            size: const Size(32, 25),
                            painter: PhotosLogoPainter(),
                          )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 32.h),
                        child: SizedBox(
                          height: 30.h,
                          child: Center(
                              child: Text(
                            photosText,
                            style: GoogleFonts.poppins(
                                fontSize: 24.h,
                                fontWeight: FontWeight.w500,
                                color: photosTextColor),
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
                            photosDetailText,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: 14.h,
                                fontWeight: FontWeight.w500,
                                color: photoskDetailTextColor),
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

class PhotosLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(19.2682, 7.62251);
    path_0.cubicTo(19.2682, 6.26873, 20.3656, 5.17127, 21.7194, 5.17127);
    path_0.cubicTo(23.0732, 5.17127, 24.1706, 6.26873, 24.1706, 7.62251);
    path_0.cubicTo(24.1706, 8.9763, 23.0732, 10.0738, 21.7194, 10.0738);
    path_0.cubicTo(20.3656, 10.0738, 19.2682, 8.9763, 19.2682, 7.62251);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(8.26622, 0.527885);
    path_1.cubicTo(13.4123, 0.0805489, 18.5874, 0.0805486, 23.7335, 0.527885);
    path_1.lineTo(26.2014, 0.742421);
    path_1.cubicTo(28.5629, 0.947699, 30.476, 2.7447, 30.8285, 5.08872);
    path_1.cubicTo(31.5698, 10.0185, 31.5698, 15.0315, 30.8285, 19.9613);
    path_1.cubicTo(30.476, 22.3053, 28.5629, 24.1023, 26.2014, 24.3076);
    path_1.lineTo(23.7335, 24.5221);
    path_1.cubicTo(18.5874, 24.9694, 13.4123, 24.9694, 8.26622, 24.5221);
    path_1.lineTo(5.79825, 24.3076);
    path_1.cubicTo(3.43678, 24.1023, 1.52371, 22.3053, 1.17123, 19.9613);
    path_1.cubicTo(0.429904, 15.0315, 0.429904, 10.0185, 1.17123, 5.08872);
    path_1.cubicTo(1.52371, 2.7447, 3.43678, 0.947699, 5.79825, 0.742421);
    path_1.lineTo(8.26622, 0.527885);
    path_1.close();
    path_1.moveTo(23.5212, 2.96992);
    path_1.cubicTo(18.5164, 2.53486, 13.4833, 2.53486, 8.4785, 2.96992);
    path_1.lineTo(6.01053, 3.18445);
    path_1.cubicTo(4.77784, 3.29161, 3.77921, 4.22965, 3.59522, 5.45323);
    path_1.cubicTo(3.17436, 8.25193, 3.00474, 11.0788, 3.08636, 13.9002);
    path_1.lineTo(9.41362, 7.57295);
    path_1.cubicTo(9.6523, 7.33427, 9.97886, 7.20459, 10.3163, 7.2145);
    path_1.cubicTo(10.6537, 7.22442, 10.972, 7.37305, 11.1963, 7.62534);
    path_1.lineTo(17.196, 14.375);
    path_1.lineTo(21.3318, 12.9964);
    path_1.cubicTo(21.7943, 12.8423, 22.3042, 12.9769, 22.6304, 13.3393);
    path_1.lineTo(28.3812, 19.7291);
    path_1.cubicTo(28.39, 19.6854, 28.3978, 19.6412, 28.4045, 19.5968);
    path_1.cubicTo(29.1095, 14.9086, 29.1095, 10.1414, 28.4045, 5.45323);
    path_1.cubicTo(28.2205, 4.22965, 27.2219, 3.29161, 25.9892, 3.18445);
    path_1.lineTo(23.5212, 2.96992);
    path_1.close();
    path_1.moveTo(26.8183, 21.6567);
    path_1.lineTo(21.3454, 15.5757);
    path_1.lineTo(17.2045, 16.9561);
    path_1.cubicTo(16.7394, 17.1111, 16.2266, 16.974, 15.9009, 16.6076);
    path_1.lineTo(10.2278, 10.2254);
    path_1.lineTo(3.29291, 17.1602);
    path_1.cubicTo(3.37263, 17.9742, 3.4734, 18.7867, 3.59522, 19.5967);
    path_1.cubicTo(3.77921, 20.8203, 4.77784, 21.7584, 6.01053, 21.8655);
    path_1.lineTo(8.4785, 22.0801);
    path_1.cubicTo(13.4833, 22.5151, 18.5164, 22.5151, 23.5212, 22.0801);
    path_1.lineTo(25.9892, 21.8655);
    path_1.cubicTo(26.2812, 21.8401, 26.5602, 21.7681, 26.8183, 21.6567);
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
