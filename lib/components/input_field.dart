import 'package:flutter/material.dart';
import 'package:fwc_1/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  const InputField({
    Key key,
    this.labelText,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: GoogleFonts.poppins(color: inputColor),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: inputColor)),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: inputColor)),
        ),
      ),
    );
  }
}
