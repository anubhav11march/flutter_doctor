import 'package:doctor_kylo_apps/Colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
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
              height: _heightScale * 36,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _widthScale * 84.0),
              child: Image.asset("assets/u7.png"),
            ),
            SizedBox(
              height: _heightScale * 29.57,
            ),
            Text(
              "Please enter the Code sent on your phone number",
              style:
                  GoogleFonts.poppins(color: col3, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: _heightScale * 37,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                box("text"),
                box("text"),
                box("text"),
                box("text"),
              ],
            ),
            SizedBox(
              height: _heightScale * 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Resend OTP",
                  style: GoogleFonts.poppins(
                    color: col5,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  width: _widthScale * 20,
                ),
                Text(
                  "0:50",
                  style: GoogleFonts.poppins(
                    color: col2,
                    fontSize: 13,
                  ),
                )
              ],
            ),
            SizedBox(
              height: _heightScale * 37,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: _widthScale * 30),
              width: _widthScale * 315,
              height: _heightScale * 54,
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Welcome()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: col2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(_widthScale * 10.0),
                    ),
                  ),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: _widthScale * 18,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            SizedBox(
              height: _heightScale * 25,
            ),
          ],
        ),
      ),
    );
  }

  Widget box(String text) {
    const double kDesignWidth = 375;
    const double kDesignHeight = 812;
    double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
    double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
    return Row(
      children: [
        Container(
          height: _heightScale * 56,
          width: _widthScale * 70,
          decoration: BoxDecoration(
            color: col6,
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(_widthScale * 10.0),
          ),
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: 5, horizontal: _widthScale * 25),
            child: TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
        ),
        SizedBox(
          width: _widthScale * 10,
        ),
      ],
    );
  }
}
