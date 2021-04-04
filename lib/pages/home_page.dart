import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fwc_1/components/home_btn.dart';
import 'package:fwc_1/pages/sign_up_page.dart';
import 'package:fwc_1/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 40.0, 32.0, 32.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _welcomeText(),
                  Spacer(),
                  Center(
                    child: SvgPicture.asset('icons/store.svg'),
                  ),
                  Spacer(),
                  HomeBtn(
                    isSignUp: true,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: HomeBtn(
                      isSignUp: false,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  RichText _welcomeText() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Welcome to\n",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          TextSpan(
            text: "ZEEBZ\n",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: "The shopping app you\n needed.",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
