import 'package:doctor_kylo_apps/Colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'on_boarding_screen3.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({Key? key}) : super(key: key);

  @override
  _OnBoardingScreen2State createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  @override
  Widget build(BuildContext context) {
    const double kDesignWidth = 375;
    const double kDesignHeight = 812;
    double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
    double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white.withOpacity(0.4),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Doctor",
                style: TextStyle(
                  color: col2,
                  fontFamily: "Poppins",
                  fontSize: _widthScale * 18,
                )),
            SizedBox(
              width: _widthScale * 2,
            ),
            Text(
              "App",
              style: GoogleFonts.poppins(
                color: col1,
                // fontFamily: "Poppins",
                fontSize: _widthScale * 18,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: _heightScale * 91,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 54.0),
              child: Image.asset("assets/u2.png"),
            ),
            SizedBox(
              height: _heightScale * 56,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 32),
              child: Text(
                "Secured Health Cards",
                style: GoogleFonts.poppins(
                    color: col2,
                    fontWeight: FontWeight.w600,
                    fontSize: _widthScale * 28),
              ),
            ),
            SizedBox(
              height: _heightScale * 26,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 80),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                style:
                    GoogleFonts.poppins(color: col3, fontSize: _widthScale * 16),
              ),
            ),
            SizedBox(
              height: _heightScale * 60,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: _widthScale * 136),
              width: _widthScale * 104,
              height: _heightScale * 42,
              child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnBoardingScreen3()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: col2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(_widthScale * 10.0),
                    ),
                  ),
                  child: Text(
                    "Next",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: _widthScale * 18,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            SizedBox(
              height: _heightScale * 64.6,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 173.6),
              child: Image.asset("assets/b2.png"),
            ),
            SizedBox(
              height: _heightScale * 25,
            ),
          ],
        ),
      ),
    );
  }
}
