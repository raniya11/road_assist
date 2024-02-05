import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roadassist/view/shop/registerpage.dart';
import 'package:roadassist/view/shop/shop_category.dart';
import 'package:roadassist/view/user/registerpage.dart';
import 'package:roadassist/widgets/colors.dart';

class RegisterationPage extends StatefulWidget {
  const RegisterationPage({super.key});

  @override
  State<RegisterationPage> createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: secColor,
          bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Text("User",style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),
                Tab(icon: Text("Shop",style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),

              ]),
        ),
        body: TabBarView(
          children: [
             UserRegisterPage(),
             ShopCategory(),
          ],
        ),
      ),
    );
  }
}
