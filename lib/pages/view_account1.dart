import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAccount1 extends StatefulWidget {
  const ViewAccount1({Key? key}) : super(key: key);

  @override
  State<ViewAccount1> createState() => _ViewAccount1State();
}

class _ViewAccount1State extends State<ViewAccount1> {
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
  final String questionText = "What is HSBC Balance?";
  final Color kQuestionTextColor = const Color(0xff404446);
  final String detailText =
      "Enter your account balance which will be\nupdated as you spend.";
  final Color kDetailTextColor = const Color(0xff72777A);
  final Color kInputBoxBorderColor = const Color(0xffE3E5E5);
  final String inputHintText = "Enter amount here";
  final Color kUpdateButtonColor = const Color(0xffFCE76B);
  final Color kLaterButtonColor = const Color(0xffCDCFD0);
  final Color kDividerColor = const Color(0xffF2F4F5);
  final String balanceAsOfDate = "11 Mar 2022";
  final Color kBalanceAsOfTextcolor = const Color(0xff979C9E);
  final Color kBalanceAsOfDateColor = const Color(0xff404446);

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
                  height: 542.h,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.h),
                        child: Image.asset(
                          bankIconLogoPath,
                          width: 40.w,
                          height: 40.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 62.h),
                        child: SizedBox(
                          height: 32.h,
                          child: Center(
                              child: Text(
                            questionText,
                            style: GoogleFonts.poppins(
                                fontSize: 24.h,
                                fontWeight: FontWeight.w500,
                                color: kQuestionTextColor),
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
                            detailText,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: 14.h,
                                fontWeight: FontWeight.w400,
                                color: kDetailTextColor),
                          )),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 24.h, right: 24.h, top: 51.h),
                        child: Container(
                          height: 48.h,
                          width: 327.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.sp),
                              border: Border.all(color: kInputBoxBorderColor)),
                          child: Row(
                            children: [
                              Flexible(
                                child: TextField(
                                  showCursor: false,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(left: 16.w),
                                      border: InputBorder.none,
                                      hintText: inputHintText,
                                      hintStyle: GoogleFonts.poppins(
                                          fontSize: 14.h,
                                          fontWeight: FontWeight.w400,
                                          color: kDetailTextColor)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 16.w),
                                child: DropDown(
                                  showUnderline: false,
                                  initialValue: "USD",
                                  items: const [
                                    "USD",
                                    "EUR",
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 24.w, right: 24.w, top: 45.h),
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
                                    "UPDATE MY DASHBOARD",
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
                                  "REMIND ME LATER",
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
                      Container(
                        height: 58.h,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            border:
                                Border(top: BorderSide(color: kDividerColor))),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Balance as of",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.h,
                                  fontWeight: FontWeight.w500,
                                  color: kBalanceAsOfTextcolor),
                            ),
                            SizedBox(width: 5.h),
                            Text(
                              balanceAsOfDate,
                              style: GoogleFonts.poppins(
                                  fontSize: 12.h,
                                  fontWeight: FontWeight.w500,
                                  color: kBalanceAsOfDateColor),
                            )
                          ],
                        )),
                      )
                    ],
                  ),
                ),
              ));
        });
  }
}
