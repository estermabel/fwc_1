import 'package:flutter/material.dart';
import 'package:fwc_1/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBtn extends StatelessWidget {
  final bool isSignUp;
  final Function onTap;
  const HomeBtn({
    Key key,
    this.isSignUp,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isSignUp ? Colors.white : Colors.transparent,
          border: isSignUp
              ? null
              : Border.all(
                  color: Colors.white,
                  width: 2,
                ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            isSignUp ? "SIGN UP" : "SIGN IN",
            style: GoogleFonts.poppins(
              color: isSignUp ? textColor2 : Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
