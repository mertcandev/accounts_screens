/* void opensheet() async {
    showModalBottomSheet<dynamic>(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        builder: (context) {
          return Page1();
        });
  } */

  /* class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int currentview = 0;
  late List<Widget> pages;
  bool page1visibility = true;
  bool page2visibility = false;
  bool page3visibility = false;
  bool page4visibility = false;
  bool page5visibility = false;

  @override
  void didChangeDependencies() {
    pages = [page1(), page2(), page3(), page4(), page5()];

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
   
    return pages[currentview];
  }

  Widget page1() {
    var backgroundColor = const Color(0xff5BEFBD);
    var kWhiteTextColor = const Color(0xffFFFFFF);
    String hintText = "Or enter new reference here";
    String choiceText =
        "Choose Existing Budget you previously created or enter a new Budget reference";
    var addIconColor = const Color(0xffFCE76B);

    return Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            color: backgroundColor),
        width: double.maxFinite,
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                        "Choose budget...",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: kWhiteTextColor),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 16.w),
                  child: SizedBox(
                    height: 40.h,
                    child: Center(
                      child: Text(
                        choiceText,
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
                  padding:
                      EdgeInsets.only(left: 40.w, right: 40.w, bottom: 33.h),
                  child: Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: kWhiteTextColor),
                        borderRadius: BorderRadius.circular(8.sp)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Flexible(
                              child: TextField(
                                onChanged: (text) {},
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: hintText,
                                    hintStyle: GoogleFonts.poppins(
                                        fontSize: 14.h,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            kWhiteTextColor.withOpacity(0.8))),
                              ),
                            ),
                            Icon(Icons.add_box_rounded, color: addIconColor)
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
                                borderRadius: BorderRadius.circular(30.sp),
                                border: Border.all(color: kWhiteTextColor)),
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
                            setState(() {
                              currentview = 1;
                              page1visibility = !page1visibility;
                              this.page2visibility = true;
                            });
                          },
                          child: Container(
                            width: 155.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.sp),
                                color: kWhiteTextColor),
                            child: Center(
                              child: Text(
                                "Next (1/6)",
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
  }

  Widget page2() {
    var backgroundColor = const Color(0xff5BEFBD);
    var kWhiteTextColor = const Color(0xffFFFFFF);
    String defineText = "Define the budget start date and end date";
    var bagIconColor = const Color(0xffFCE76B);
    DateTime currentTime = DateTime.now();
    String currentTimeText = Jiffy(currentTime).format('dd MMM yy');

    return Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16), topLeft: Radius.circular(16))),
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
                        color: kWhiteTextColor),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 33.h),
              child: SizedBox(
                height: 20.h,
                child: Center(
                  child: Text(
                    defineText,
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
                        color: kWhiteTextColor.withOpacity(0.7)),
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: kWhiteTextColor),
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
                                        fontWeight: FontWeight.w700,
                                        color: kWhiteTextColor),
                                    border: InputBorder.none),
                                initialEntryMode:
                                    DatePickerEntryMode.calendarOnly,
                                initialDatePickerMode: DatePickerMode.year,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2010),
                                lastDate: DateTime(2030),
                              ),
                            ),
                            Icon(
                              Icons.add_box_rounded,
                              color: bagIconColor,
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
              padding: EdgeInsets.only(left: 40.w, right: 40.w, top: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "End",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                        fontSize: 12.h,
                        fontWeight: FontWeight.w400,
                        color: kWhiteTextColor.withOpacity(0.7)),
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: kWhiteTextColor),
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
                                        fontWeight: FontWeight.w700,
                                        color: kWhiteTextColor),
                                    border: InputBorder.none),
                                initialEntryMode:
                                    DatePickerEntryMode.calendarOnly,
                                initialDatePickerMode: DatePickerMode.year,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2010),
                                lastDate: DateTime(2030),
                              ),
                            ),
                            Icon(
                              Icons.add_box_rounded,
                              color: bagIconColor,
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
              padding:
                  EdgeInsets.only(bottom: 50.h, left: 16.5.w, right: 16.5.w),
              child: SizedBox(
                height: 48.h,
                width: 327.w,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentview = 0;
                        });
                      },
                      child: Container(
                        width: 155.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.sp),
                            border: Border.all(color: kWhiteTextColor)),
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
                        setState(() {
                          currentview = 2;
                        });
                      },
                      child: Container(
                        width: 155.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.sp),
                            color: kWhiteTextColor),
                        child: Center(
                          child: Text(
                            "Next (2/6)",
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
        ));
  }

  Widget page3() {
    var backgroundColor = const Color(0xff5BEFBD);
    var kWhiteTextColor = const Color(0xffFFFFFF);

    return Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16), topLeft: Radius.circular(16))),
        height: 333.h,
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
                    "Expense or income",
                    style: GoogleFonts.poppins(
                        fontSize: 24.h,
                        fontWeight: FontWeight.w500,
                        color: kWhiteTextColor),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding:
                  EdgeInsets.only(bottom: 50.h, left: 16.5.w, right: 16.5.w),
              child: SizedBox(
                height: 48.h,
                width: 327.w,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentview = 1;
                        });
                      },
                      child: Container(
                        width: 155.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.sp),
                            border: Border.all(color: kWhiteTextColor)),
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
                        setState(() {
                          currentview = 3;
                        });
                      },
                      child: Container(
                        width: 155.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.sp),
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
        ));
  }

  Widget page4() {
    var backgroundColor = const Color(0xff5BEFBD);
    var kWhiteTextColor = const Color(0xffFFFFFF);
    String hintText = "Or enter new reference here";
    String selectCenterText =
        "Cost can be your Personal Cost, Family Cost, Project Cost, Dependants Cost...";
    var addIconColor = const Color(0xffFCE76B);

    return Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            color: backgroundColor),
        width: double.maxFinite,
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                  padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 16.w),
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
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.only(left: 40.w, right: 40.w, bottom: 33.h),
                  child: Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: kWhiteTextColor),
                        borderRadius: BorderRadius.circular(8.sp)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Flexible(
                              child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: hintText,
                                    hintStyle: GoogleFonts.poppins(
                                        fontSize: 14.h,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            kWhiteTextColor.withOpacity(0.8))),
                              ),
                            ),
                            Icon(Icons.add_box_rounded, color: addIconColor)
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
                            setState(() {
                              currentview = 2;
                            });
                          },
                          child: Container(
                            width: 155.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.sp),
                                border: Border.all(color: kWhiteTextColor)),
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
                            setState(() {
                              currentview = 4;
                            });
                          },
                          child: Container(
                            width: 155.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.sp),
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
  }

  Widget page5() {
    var backgroundColor = const Color(0xff5BEFBD);
    var kWhiteTextColor = const Color(0xffFFFFFF);
    String hintText = "Or enter new reference here";
    String phaseText =
        "Here you will decide the frequency to which the amount you will budget is going to be repeated over the budget period.";
    var addIconColor = const Color(0xffFCE76B);

    return Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            color: backgroundColor),
        width: double.maxFinite,
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: kWhiteTextColor),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 16.w),
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
                  padding:
                      EdgeInsets.only(left: 40.w, right: 40.w, bottom: 33.h),
                  child: Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: kWhiteTextColor),
                        borderRadius: BorderRadius.circular(8.sp)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Flexible(
                              child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: hintText,
                                    hintStyle: GoogleFonts.poppins(
                                        fontSize: 14.h,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            kWhiteTextColor.withOpacity(0.8))),
                              ),
                            ),
                            Icon(Icons.add_box_rounded, color: addIconColor)
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
                            setState(() {
                              currentview = 3;
                            });
                          },
                          child: Container(
                            width: 155.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.sp),
                                border: Border.all(color: kWhiteTextColor)),
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
                                borderRadius: BorderRadius.circular(30.sp),
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
  }
}
 */
