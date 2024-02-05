import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roadassist/view/common/registerationpage.dart';
import 'package:roadassist/view/user/bottom_nav_bar.dart';
import 'package:roadassist/view/user/homepage.dart';
import 'package:roadassist/widgets/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _loginkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _loginkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Login Page",
                  style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty || !value.contains('@gmail.com') || value.length <= 4){
                      return "Enter a valid email";
                    }
                  },
                  controller: _emailController,
                  decoration: InputDecoration(
                    fillColor: textffColor,
                    filled: true,
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white),
                    suffixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2.0,
                      ),
                    ),
                    // disabledBorder:  OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(
                    //     color: Colors.black38,
                    //     width: 1.0,
                    //   ),
                    // ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value){
                    if(value!.length<=6){
                      return "Password should be more than 5";
                    }
                  },
                  controller: _passwordController,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white),
                    fillColor: textffColor,
                    filled: true,
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.montserrat(color: Colors.white),
                    )),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50,
                  width: 170,
                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavBarUser()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      // textStyle: MaterialStateProperty.all(GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white)),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterationPage())),
                  child: RichText(
                    text: TextSpan(
                        text: "Do not have an account?? ",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                              text: "Register",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 16))
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
