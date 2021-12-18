import 'package:doctor_kylo_apps/Colors/colors.dart';
import 'package:doctor_kylo_apps/Screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
        leading: Image.asset("assets/Vector.png"),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: _widthScale * 96.0),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Doc",
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: _heightScale * 45,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 68.0),
              child: Image.asset("assets/u6.png"),
            ),
            SizedBox(
              height: _heightScale * 29.57,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 30.0),
              child: TextField(
                autofocus: false,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: _widthScale * 15.0, color: black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: col6,
                  hintText: "Phone Number",
                  hintStyle: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(fontSize: _widthScale * 12, color: col5)),
                  contentPadding: EdgeInsets.only(
                      left: _widthScale * 14.0,
                      bottom: _heightScale * 8.0,
                      top: _heightScale * 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: col1),
                    borderRadius: BorderRadius.circular(_widthScale * 6),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: textFieldColor),
                    borderRadius: BorderRadius.circular(_widthScale * 6),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _heightScale * 22,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: _widthScale * 30),
              width: _widthScale * 315,
              height: _heightScale * 54,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OTPScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: col2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(_widthScale * 10.0),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: _widthScale * 18,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            SizedBox(
              height: _heightScale * 11,
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
                )
              ],
            ),
            SizedBox(height: _heightScale * 11),
            Container(
              color: Colors.grey,
              width: MediaQuery.of(context).size.width * 0.8,
              height: 1,
            ),
            SizedBox(height: _heightScale * 36),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 30.0),
              child: Image.asset("assets/googleimg.png"),
            ),
            SizedBox(height: _heightScale * 17),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 30.0),
              child: Image.asset("assets/fbimg.png"),
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
