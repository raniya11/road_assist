import 'package:flutter/material.dart';
import 'package:roadassist/services/shop_service/shop_service.dart';
import 'package:roadassist/models/shop_model/shop_model.dart';
import 'package:roadassist/widgets/AppText.dart';
import 'package:roadassist/widgets/colors.dart';

class ShopCategory extends StatefulWidget {
  const ShopCategory({Key? key}) : super(key: key);

  @override
  State<ShopCategory> createState() => _ShopCategoryState();
}

class _ShopCategoryState extends State<ShopCategory> {
  var selectedCategory = "-1";
  //ShopCategory selectedCategory = ShopCategory.workshop;
  final ShopService userService = ShopService();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: primaryColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 60),
            child: DropdownButtonFormField(
              dropdownColor: textffColor,
              value: selectedCategory,
              onChanged: (v) {},
              items: [
                DropdownMenuItem(
                  child: AppText(text: "Select Category",color: Colors.white,),
                  value: '-1',
                ),
                DropdownMenuItem(
                  child: AppText(text: "Catering",color:Colors.white),
                  value: '1',
                ),
                DropdownMenuItem(
                  child: AppText(text: "Workshop",color: Colors.white,),
                  value: '2',
                ),
              ],
              decoration: InputDecoration(
                  hintText: 'Shop Category',
                fillColor: textffColor,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
