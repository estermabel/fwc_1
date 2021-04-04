import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fwc_1/components/input_field.dart';
import 'package:fwc_1/components/sign_up_btn.dart';
import 'package:fwc_1/components/social_media_btn.dart';
import 'package:fwc_1/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          "SIGN UP",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                gradientTopColor,
                gradientBaseColor,
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32.0, 40.0, 32.0, 32.0),
          child: Column(
            children: [
              InputField(
                labelText: "Name",
                obscureText: false,
              ),
              InputField(
                labelText: "Email",
                obscureText: false,
              ),
              InputField(
                labelText: "Password",
                obscureText: true,
              ),
              Spacer(),
              SignUpBtn(),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  "Or use your social media account",
                  style: GoogleFonts.poppins(color: textColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialMediaBtn(
                      iconPath: "icons/google.svg",
                      onTap: () {},
                    ),
                    SocialMediaBtn(
                      iconPath: "icons/twitter.svg",
                      onTap: () {},
                    ),
                    SocialMediaBtn(
                      iconPath: "icons/facebook.svg",
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
