import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAccount6 extends StatefulWidget {
  const ViewAccount6({Key? key}) : super(key: key);

  @override
  State<ViewAccount6> createState() => _ViewAccount6State();
}

class _ViewAccount6State extends State<ViewAccount6> {
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
  final String inviteText = "Invite a friend";
  final Color inviteTextColor = const Color(0xff404446);
  final String inviteDetailText =
      "Find out when you have pending transaction and other notifications";
  final Color invitekDetailTextColor = const Color(0xff979C9E);
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
                            size: const Size(32, 41),
                            painter: RingIconPainter(),
                          )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 32.h),
                        child: SizedBox(
                          height: 30.h,
                          child: Center(
                              child: Text(
                            inviteText,
                            style: GoogleFonts.poppins(
                                fontSize: 24.h,
                                fontWeight: FontWeight.w500,
                                color: inviteTextColor),
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
                            inviteDetailText,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: 14.h,
                                fontWeight: FontWeight.w500,
                                color: invitekDetailTextColor),
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
                                    "INVITE",
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
                                  "MAYBE LATER",
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

class RingIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(18.0286, 2.52878);
    path_0.cubicTo(18.0286, 1.40832, 17.1203, 0.5, 15.9999, 0.5);
    path_0.cubicTo(14.8794, 0.5, 13.9711, 1.40832, 13.9711, 2.52878);
    path_0.lineTo(13.9711, 4.05037);
    path_0.lineTo(12.8402, 4.05037);
    path_0.cubicTo(8.32602, 4.05037, 4.58982, 7.56018, 4.30803, 12.0656);
    path_0.lineTo(3.85967, 19.2342);
    path_0.cubicTo(3.68872, 21.9673, 2.77113, 24.6012, 1.20682, 26.8489);
    path_0.cubicTo(-0.206598, 28.8799, 1.05169, 31.6848, 3.5084, 31.9796);
    path_0.lineTo(10.4207, 32.8091);
    path_0.lineTo(10.4207, 34.9893);
    path_0.cubicTo(10.4207, 38.0705, 12.9186, 40.5684, 15.9999, 40.5684);
    path_0.cubicTo(19.0811, 40.5684, 21.579, 38.0705, 21.579, 34.9893);
    path_0.lineTo(21.579, 32.8091);
    path_0.lineTo(28.4913, 31.9796);
    path_0.cubicTo(30.948, 31.6848, 32.2063, 28.8799, 30.7929, 26.8489);
    path_0.cubicTo(29.2286, 24.6012, 28.311, 21.9673, 28.14, 19.2342);
    path_0.lineTo(27.6917, 12.0656);
    path_0.cubicTo(27.4099, 7.56018, 23.6737, 4.05037, 19.1595, 4.05037);
    path_0.lineTo(18.0286, 4.05037);
    path_0.lineTo(18.0286, 2.52878);
    path_0.close();
    path_0.moveTo(12.8402, 7.09353);
    path_0.cubicTo(9.93295, 7.09353, 7.52675, 9.35394, 7.34527, 12.2555);
    path_0.lineTo(6.8969, 19.4241);
    path_0.cubicTo(6.6912, 22.7131, 5.58702, 25.8825, 3.70462, 28.5873);
    path_0.cubicTo(3.60247, 28.7341, 3.69341, 28.9368, 3.87098, 28.9581);
    path_0.lineTo(11.4539, 29.8681);
    path_0.cubicTo(14.4737, 30.2304, 17.526, 30.2304, 20.5458, 29.8681);
    path_0.lineTo(28.1287, 28.9581);
    path_0.cubicTo(28.3063, 28.9368, 28.3972, 28.7341, 28.2951, 28.5873);
    path_0.cubicTo(26.4127, 25.8825, 25.3085, 22.7131, 25.1028, 19.4241);
    path_0.lineTo(24.6544, 12.2555);
    path_0.cubicTo(24.4729, 9.35394, 22.0667, 7.09353, 19.1595, 7.09353);
    path_0.lineTo(12.8402, 7.09353);
    path_0.close();
    path_0.moveTo(15.9999, 37.5252);
    path_0.cubicTo(14.5993, 37.5252, 13.4639, 36.3898, 13.4639, 34.9893);
    path_0.lineTo(13.4639, 33.4677);
    path_0.lineTo(18.5358, 33.4677);
    path_0.lineTo(18.5358, 34.9893);
    path_0.cubicTo(18.5358, 36.3898, 17.4004, 37.5252, 15.9999, 37.5252);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffC4C4C4).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
