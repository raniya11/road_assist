import 'package:flutter/material.dart';
import 'package:roadassist/view/user/homepage.dart';
import 'package:roadassist/view/user/profile_page.dart';
import 'package:roadassist/widgets/colors.dart';

class BottomNavBarUser extends StatefulWidget {
  const BottomNavBarUser({super.key});

  @override
  State<BottomNavBarUser> createState() => _BottomNavBarUserState();
}

class _BottomNavBarUserState extends State<BottomNavBarUser> {

  int selectedindex=0;

  final List<Widget> _list=[
    HomePage(),
    ProfilePage()
  ];

  void onItemTapped(int index){
    setState(() {
      selectedindex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _list.elementAt(selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person),
            label: "Profile"
            ),

          ],
        currentIndex: selectedindex,
        unselectedItemColor: Colors.white,
        selectedItemColor: textffColor,
        onTap: onItemTapped,
        backgroundColor: primaryColor,
      ),
    );
  }
}
