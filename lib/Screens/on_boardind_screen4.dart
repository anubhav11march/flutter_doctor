import 'package:doctor_kylo_apps/Colors/colors.dart';
import 'package:doctor_kylo_apps/Screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen4 extends StatefulWidget {
  const OnBoardingScreen4({Key? key}) : super(key: key);

  @override
  _OnBoardingScreen4State createState() => _OnBoardingScreen4State();
}

class _OnBoardingScreen4State extends State<OnBoardingScreen4> {
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
              height: _heightScale * 103,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 56.0),
              child: Image.asset("assets/u4.png"),
            ),
            SizedBox(
              height: _heightScale * 35.27,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 37),
              child: Text(
                "Upload Prescription and Consult a Doctor",
                style: GoogleFonts.poppins(
                    color: col2,
                    fontWeight: FontWeight.w600,
                    fontSize: _widthScale * 28),
              ),
            ),
            SizedBox(
              height: _heightScale * 25,
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
              height: _heightScale * 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: _widthScale * 136),
              width: _widthScale * 104,
              height: _heightScale * 42,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Welcome()));
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
              child: Image.asset("assets/b4.png"),
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
