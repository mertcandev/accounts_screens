import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAccount3 extends StatefulWidget {
  const ViewAccount3({Key? key}) : super(key: key);

  @override
  State<ViewAccount3> createState() => _ViewAccount3State();
}

class _ViewAccount3State extends State<ViewAccount3> {
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
  final String smsText = "Enable SMS Access";
  final Color smsTextColor = const Color(0xff404446);
  final String smsDetailText =
      "Turn your SMS access on to enable auto  categorization of your transactions";
  final Color smsTextDetailColor = const Color(0xff979C9E);
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
                            size: const Size(31, 27),
                            painter: SmsLogoPainter(),
                          )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 32.h),
                        child: SizedBox(
                          height: 30.h,
                          child: Center(
                              child: Text(
                            smsText,
                            style: GoogleFonts.poppins(
                                fontSize: 24.h,
                                fontWeight: FontWeight.w500,
                                color: smsTextColor),
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
                            smsDetailText,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: 14.h,
                                fontWeight: FontWeight.w500,
                                color: smsTextDetailColor),
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

class SmsLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(8.48554, 9.516);
    path_0.cubicTo(7.25226, 9.516, 6.2525, 10.5158, 6.2525, 11.749);
    path_0.cubicTo(6.2525, 12.9823, 7.25226, 13.9821, 8.48554, 13.9821);
    path_0.cubicTo(9.71881, 13.9821, 10.7186, 12.9823, 10.7186, 11.749);
    path_0.cubicTo(10.7186, 10.5158, 9.71881, 9.516, 8.48554, 9.516);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(15.6312, 9.516);
    path_1.cubicTo(14.398, 9.516, 13.3982, 10.5158, 13.3982, 11.749);
    path_1.cubicTo(13.3982, 12.9823, 14.398, 13.9821, 15.6312, 13.9821);
    path_1.cubicTo(16.8645, 13.9821, 17.8643, 12.9823, 17.8643, 11.749);
    path_1.cubicTo(17.8643, 10.5158, 16.8645, 9.516, 15.6312, 9.516);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(20.5439, 11.749);
    path_2.cubicTo(20.5439, 10.5158, 21.5437, 9.516, 22.777, 9.516);
    path_2.cubicTo(24.0102, 9.516, 25.01, 10.5158, 25.01, 11.749);
    path_2.cubicTo(25.01, 12.9823, 24.0102, 13.9821, 22.777, 13.9821);
    path_2.cubicTo(21.5437, 13.9821, 20.5439, 12.9823, 20.5439, 11.749);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(22.9569, 0.74962);
    path_3.cubicTo(18.1439, 0.339171, 13.3058, 0.315351, 8.48901, 0.678389);
    path_3.lineTo(8.14381, 0.704407);
    path_3.cubicTo(3.55036, 1.05061, 0, 4.87863, 0, 9.48511);
    path_3.lineTo(0, 24.7006);
    path_3.cubicTo(0, 25.172, 0.247717, 25.6087, 0.652312, 25.8506);
    path_3.cubicTo(1.05691, 26.0925, 1.55885, 26.104, 1.97407, 25.8808);
    path_3.lineTo(8.96042, 22.1263);
    path_3.cubicTo(9.28539, 21.9516, 9.64857, 21.8602, 10.0175, 21.8602);
    path_3.lineTo(26.0532, 21.8602);
    path_3.cubicTo(28.0756, 21.8602, 29.8088, 20.4143, 30.1713, 18.4247);
    path_3.cubicTo(30.906, 14.3923, 30.9641, 10.2657, 30.343, 6.21423);
    path_3.lineTo(30.16, 5.02031);
    path_3.cubicTo(29.8269, 2.84668, 28.0487, 1.18384, 25.8576, 0.99699);
    path_3.lineTo(22.9569, 0.74962);
    path_3.close();
    path_3.moveTo(8.6904, 3.35045);
    path_3.cubicTo(13.3643, 2.99818, 18.059, 3.0213, 22.7292, 3.41957);
    path_3.lineTo(25.6299, 3.66694);
    path_3.cubicTo(26.588, 3.74865, 27.3656, 4.4758, 27.5113, 5.42631);
    path_3.lineTo(27.6943, 6.62023);
    path_3.cubicTo(28.2703, 10.3776, 28.2165, 14.2047, 27.5351, 17.9443);
    path_3.cubicTo(27.4046, 18.6603, 26.781, 19.1806, 26.0532, 19.1806);
    path_3.lineTo(10.0175, 19.1806);
    path_3.cubicTo(9.20586, 19.1806, 8.40686, 19.3817, 7.69192, 19.7659);
    path_3.lineTo(2.67964, 22.4596);
    path_3.lineTo(2.67964, 9.48511);
    path_3.cubicTo(2.67964, 6.28043, 5.14959, 3.61732, 8.3452, 3.37647);
    path_3.lineTo(8.6904, 3.35045);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
