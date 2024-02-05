import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roadassist/view/common/loginpage.dart';
import 'package:roadassist/view/common/registerationpage.dart';
import 'package:roadassist/widgets/colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: primaryColor,
        child: Stack(
          children: [
            Align(
                alignment: Alignment(0, -0.5),
                child: Image(image: AssetImage("assets/img/splashmain.png"))),
            Align(
                alignment: Alignment(-0.8, 0.2),
                child: Text(
                  "WELCOME",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 26),
                )),
            Align(
                alignment: Alignment(-0.8, 0.275),
                child: Text(
                  "Let's Get Started",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 18),
                )),
            Align(
              alignment: Alignment(0, 1.125),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.65),
              child: Container(
                height: 50,
                width: 150,
                //color: Colors.red,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)
                  ),
                    child: Text(
                  "LOGIN",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.8),
              child: Container(
                height: 50,
                width: 150,
                //color: Colors.red,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterationPage()));
                  },
                  style: ButtonStyle(
                      //backgroundColor: MaterialStateProperty.all(Color(0xffD5D6D8))
                  ),
                  child: Text(
                    "REGISTER",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
