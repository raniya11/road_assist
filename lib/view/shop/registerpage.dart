import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roadassist/services/shop_service/shop_service.dart';
import 'package:roadassist/view/common/loginpage.dart';
import 'package:roadassist/widgets/AppText.dart';
import 'package:roadassist/widgets/colors.dart';

import '../../models/shop_model/shop_model.dart';

class ShopRegisterPage extends StatefulWidget {
  const ShopRegisterPage({super.key});

  @override
  State<ShopRegisterPage> createState() => _ShopRegisterPageState();
}

class _ShopRegisterPageState extends State<ShopRegisterPage> {

  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  TextEditingController _cpassController=TextEditingController();
  TextEditingController _usernameController=TextEditingController();



  final _formKey = GlobalKey<FormState>();
  final ShopService shopService=ShopService();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 80,bottom: 30),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppText(text: "Register Page",size: 26,fw: FontWeight.w500,color: Colors.black,),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    fillColor: Colors.purple.shade400,
                    filled: true,
                    hintText: "Full Name",
                    hintStyle: TextStyle(color: Colors.white),
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
                SizedBox(height: 20,),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    fillColor: Colors.purple.shade400,
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
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white),
                    fillColor: secColor,
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
                TextFormField(
                  controller: _cpassController,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.white),
                    fillColor: secColor,
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
                SizedBox(height: 60,),
                Container(
                  height: 50,
                  width: 170,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => HomePage()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      // textStyle: MaterialStateProperty.all(GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white)),
                    ),
                    child: Center(
                      child: Text(
                        "Register",
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
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage())),
                  child: RichText(
                    text: TextSpan(
                        text: "Already logged in ",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black),
                        children: [
                          TextSpan(
                              text: "Login",
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
