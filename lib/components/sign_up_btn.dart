import 'package:flutter/material.dart';
import 'package:fwc_1/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpBtn extends StatelessWidget {
  const SignUpBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              gradientTopColor,
              gradientBaseColor,
            ],
          ),
        ),
        child: Center(
          child: Text(
            "CREATE ACCOUNT",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
