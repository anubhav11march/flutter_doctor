import 'package:doctor_kylo_apps/Colors/colors.dart';
import 'package:doctor_kylo_apps/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
              height: _heightScale * 102,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 51.0),
              child: Image.asset("assets/u5.png"),
            ),
            SizedBox(
              height: _heightScale * 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 120),
              child: Text(
                "Welcome",
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
                style: GoogleFonts.poppins(
                    color: col3, fontSize: _widthScale * 16),
              ),
            ),
            SizedBox(
              height: _heightScale * 23,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 120),
              child: Text(
                "I am",
                style: GoogleFonts.poppins(
                    color: col4,
                    fontWeight: FontWeight.w600,
                    fontSize: _widthScale * 19),
              ),
            ),
            SizedBox(
              height: _heightScale * 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //margin: EdgeInsets.symmetric(horizontal: _widthScale * 136),
                  width: _widthScale * 104,
                  height: _heightScale * 42,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: col2,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(_widthScale * 10.0),
                        ),
                      ),
                      child: Text(
                        "Doctor",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: _widthScale * 18,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
                SizedBox(
                  width: _widthScale * 35,
                ),
                Container(
                  //margin: EdgeInsets.symmetric(horizontal: _widthScale * 136),
                  width: _widthScale * 104,
                  height: _heightScale * 42,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: col2,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(_widthScale * 10.0),
                        ),
                      ),
                      child: Text(
                        "Patient",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: _widthScale * 18,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: _heightScale * 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Want to explore?",
                  style: GoogleFonts.poppins(
                    color: col5,
                    fontSize: 12,
                  ),
                ),
                Text(
                  " Skip",
                  style: GoogleFonts.poppins(
                      color: col2, fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ],
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
