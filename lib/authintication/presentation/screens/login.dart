import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zouina/authintication/presentation/screens/signup.dart';
import 'package:zouina/authintication/presentation/widgets/custum_text_field.dart';
import 'package:zouina/authintication/presentation/widgets/password_field.dart';
import 'package:zouina/core/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zouina/core/validators.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  TextEditingController? EmailCtrl = TextEditingController();

  TextEditingController? Passwordctrl = TextEditingController();
  final GlobalKey<FormState> formstate =GlobalKey<FormState>();
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(gradient: AppColors.primeclrGradient),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 64,
                left: 80,
                right: 80,
                top: 64,
              ),
              child: Column(
                spacing: 7,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 155,
                    height: 25,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.whiteClr.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(9999),
                    ),

                    child: Row(
                      children: [
                        Icon(
                          Icons.auto_awesome,
                          color: AppColors.whiteClr,
                          size: 11.92,
                        ),
                        Text(
                          " HAUTE JOAILLERIE",
                          style: TextStyle(
                            color: AppColors.whiteClr,
                            fontSize: 10,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.whiteClr.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.whiteClr,
                      size: 20,
                    ),
                  ),

                  Text(
                    "Z O W I N A",
                    style: TextStyle(
                      color: AppColors.whiteClr,
                      fontSize: 32,
                      fontWeight: FontWeight(600),
                      fontFamily: "Playfair Display",
                    ),
                  ),

                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: AppColors.whiteClr,
                      fontSize: 24,
                      fontWeight: FontWeight(500),
                      fontFamily: "Playfair Display",
                    ),
                  ),

                  Text(
                    "Sign in to access your curated vault",
                    style: TextStyle(
                      color: AppColors.whiteClr,
                      fontSize: 14,
                      fontWeight: FontWeight(400),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 275,
            child: Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              //  height: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.whiteClr,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: formstate,
                  child: Column(
                    children: [
                      CustumTextField(
                        hint: "name@example.com",
                        text: "Email Address",
                        icon: Icons.email_outlined,
                        ctrl: EmailCtrl,
                        validator: (e) {return Validator.validateEmail(e!);},
                      ),
                      PasswordField(ctrl: Passwordctrl,  validator: (pass) {return Validator.validatePassword(pass!);},),
                      SizedBox(height: 40),
                      InkWell(
                        onTap: () {

                          if (formstate.currentState!.validate())
                          {
                            log("loged");
                          }



                        },

                        //borderRadius: BorderRadius.circular( 50),
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9999),
                            gradient: AppColors.primeclrGradient,
                          ),
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight(500),
                              color: AppColors.whiteClr,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: AppColors .lightgrayclr,
                              thickness: 2,
                            ),
                          ),
                          Text(
                            " OR CONTIUE WITH ",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight(500),
                              color: AppColors.lightgrayclr,
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: AppColors.lightgrayclr,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.google),
                              Text(
                                "   Continue with Google ",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight(500),
                                  color: AppColors.blackClr,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 90),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight(500),
                              color: AppColors.textClr,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                               Navigator.push(context,
                                MaterialPageRoute(builder:  (context) => SignUp(),));


                            },
                            child: Text("Create Account"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
