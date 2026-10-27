import 'package:flutter/material.dart';
import 'package:zouina/core/app_colors.dart';
import 'dart:async';

class Otp extends StatefulWidget {
  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final focusNodes = List.generate(6, (_) => FocusNode());
  int sec_remaining = 59;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (sec_remaining > 0) {
        setState(() {
          sec_remaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(gradient: AppColors.primeclrGradient),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        return Navigator.pop(context);
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.whiteClr.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(9999),
                        ),

                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.whiteClr,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(width: 90),
                    Text(
                      "Z O W I N A",
                      style: TextStyle(
                        color: AppColors.whiteClr,
                        fontSize: 20,
                        fontWeight: FontWeight(600),
                        fontFamily: "Playfair Display",
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 120,
                    left: 30,
                    right: 30,
                    bottom: 27,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.whiteClr.withValues(alpha: .25),
                              blurRadius: 10,
                              spreadRadius: 2,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: AppColors.whiteClr.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(9999),
                        ),
                        width: 80,
                        height: 80,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),

                        child: Icon(
                          Icons.diamond,
                          color: AppColors.whiteClr,
                          size: 35,
                        ),
                      ),

                      SizedBox(height: 20),
                      Text(
                        "Verify Your Email",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight(600),
                          fontFamily: "Playfair Display",
                          color: AppColors.whiteClr,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        """We sent a 6-digit verification code to your  
                    email address""",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight(400),
                          color: AppColors.whiteClr,
                        ),
                      ),
                      SizedBox(height: 20),

                      Container(
                        width: 200,
                        height: 25,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.whiteClr.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(9999),
                        ),

                        child: Row(
                          children: [
                            Icon(
                              Icons.mark_email_read_outlined,
                              color: AppColors.whiteClr,
                              size: 11.92,
                            ),
                            Text(
                              "   celine.v@atelier-zowina.com ",
                              style: TextStyle(
                                color: AppColors.whiteClr,
                                fontSize: 10,
                                fontWeight: FontWeight(700),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 45),
                      SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 8),
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 44,
                              height: 56,
                              child: TextField(
                                focusNode: focusNodes[index],

                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                style: TextStyle(
                                  color: AppColors.whiteClr,
                                  fontSize: 24,
                                ),
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),

                                onChanged: (value) {
                                  if (value.isNotEmpty && index < 5) {
                                    focusNodes[index + 1].requestFocus();
                                  } else if (value.isEmpty && index > 0) {
                                    focusNodes[index - 1].requestFocus();
                                  }
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.hourglass_bottom,
                            color: AppColors.lightgrayclr,
                          ),
                          Text(
                            " Code expires in  ",
                            style: TextStyle(
                              color: AppColors.lightgrayclr,
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "00:${sec_remaining.toString().padLeft(2, '0')}",
                            style: TextStyle(
                              color: AppColors.lightgrayclr,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 45),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Verify Code",
                            style: TextStyle(
                              color: AppColors.lightpurpleClr,
                              fontSize: 20,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 45),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            " Didn't receive code?",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight(500),
                              color: AppColors.textClr,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Resend Code",   style: TextStyle(
                              fontSize: 16,color: AppColors.buttonClr) ,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
