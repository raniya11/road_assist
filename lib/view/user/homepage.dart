import 'package:flutter/material.dart';
import 'package:roadassist/widgets/AppText.dart';
import 'package:roadassist/widgets/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: primaryColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: "Hello Raniya!",color: Colors.white,size: 22,fw: FontWeight.bold,),
                      Container(
                          height:40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black,
                          image: DecorationImage(image: AssetImage("assets/img/icon.jfif"))
                        ),
                        ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: secColor
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(-0.85, -0.75),
                            child: AppText(text: "50% Offer on\nCar Wash!!!",color: Colors.white,fw: FontWeight.w600,size: 20,),),
                        Align(
                          alignment: Alignment(-0.85, 0.75),
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green
                            ),
                            child: Center(child: AppText(text: "Book Now",fw: FontWeight.w500,size: 14,color: Colors.white,)),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.90, 0.3),
                            child: Image(image: AssetImage("assets/img/car_wash.png"),height: 125,))
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  AppText(text: "Vehicles",size: 20,fw: FontWeight.w500,color: Colors.white,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: textffColor
                        ),
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/img/car.png"),height: 75,fit: BoxFit.cover,),
                            AppText(text: "Cars",color: Colors.white,size: 14,fw: FontWeight.w500,),
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: textffColor
                        ),
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/img/heavy_vehicle.png"),height: 75,fit: BoxFit.cover,),
                            AppText(text: "Heavy Vehicle",color: Colors.white,size: 14,fw: FontWeight.w500,),
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: textffColor
                        ),
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/img/two_wheeler.png"),height: 75,fit: BoxFit.contain,),
                            AppText(text: "Two Wheeler",color: Colors.white,size: 14,fw: FontWeight.w500,),

                          ],
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),
                  AppText(text: "Services",size: 20,fw: FontWeight.w500,color: Colors.white,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 110,
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: cColor
                        ),
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/img/towing.png"),height: 75,fit: BoxFit.cover,),
                            AppText(text: "Mechanic",color: Colors.white,size: 14,fw: FontWeight.w500,),
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: cColor
                        ),
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/img/food_delivery.png"),height: 75,fit: BoxFit.contain,),
                            AppText(text: "Food Delivery",color: Colors.white,size: 14,fw: FontWeight.w500,),
                          ],
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),
                  AppText(text: "Recent Activities",size: 20,fw: FontWeight.w500,color: Colors.white,),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 135,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: textffColor
                          ),
                          child: Column(
                            children: [

                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 135,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: textffColor
                          ),
                          child: Column(
                            children: [

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
