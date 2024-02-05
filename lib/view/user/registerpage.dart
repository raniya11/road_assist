import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roadassist/view/common/loginpage.dart';
import 'package:roadassist/view/user/homepage.dart';
import 'package:roadassist/widgets/AppText.dart';
import 'package:roadassist/widgets/colors.dart';

class UserRegisterPage extends StatefulWidget {
  const UserRegisterPage({super.key});

  @override
  State<UserRegisterPage> createState() => _UserRegisterPageState();
}

class _UserRegisterPageState extends State<UserRegisterPage> {

  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  TextEditingController _cpassController=TextEditingController();
  TextEditingController _usernameController=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool show=true;
  bool showpass=true;


  @override
  void dispose() {

    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    _cpassController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 80,bottom: 30),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppText(text: "Register Page",size: 26,fw: FontWeight.w500,color: Colors.white,),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Field is mandatory";
                    }
                    return null;
                  },
                  controller: _usernameController,
                  decoration: InputDecoration(
                    fillColor: textffColor,
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
                  validator: (value){
                    if(value!.isEmpty || !value.contains('@gmail.com') || value.length <= 4){
                      return "Field is mandatory";
                    }
                    return null;
                  },
                  controller: _emailController,
                  decoration: InputDecoration(
                    fillColor:textffColor,
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
                  validator: (value){
                    if(value!.isEmpty || value!.length<6){
                      return "Field is mandatory and required minimum of 6 characters";
                    }
                    return null;
                  },
                  controller: _passwordController,
                  obscureText: show,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white),
                    fillColor: textffColor,
                    filled: true,
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          show=!show;
                        });
                      },
                      icon: show == true ?Icon(Icons.visibility_off_outlined,color: Colors.white,): Icon(Icons.visibility_outlined,color: Colors.white,),
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
                  validator: (value){
                    if(value!.isEmpty || value!.length<6){
                      return "Field is mandatory and required minimum of 6 characters";
                    }
                    return null;
                  },
                  controller: _cpassController,
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.white),
                    fillColor: textffColor,
                    filled: true,
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        showpass=!showpass;
                      });
                    },
                      icon: showpass == true?Icon(Icons.visibility_off_outlined,color: Colors.white,): Icon(Icons.visibility_outlined,color: Colors.white,),),
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
                      if(_passwordController.text==_cpassController.text){
                        if(_formKey.currentState!.validate()){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                      }

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
                        text: "Already have an account?? ",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w400,color: Colors.white),
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
