import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:miniproject/screens/userProfile.dart';

import 'homepage.dart';

class bottomNav extends StatefulWidget {
        
  

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
      int _selectedIndex=0;
int currentindex=0;
     
      
    
  
  @override
  Widget build(BuildContext context) {
      String? uname=FirebaseAuth.instance.currentUser!.email;


     final screens=[
    homePage(),
    userProfile(uname!)
    ];
     
    return Scaffold(
      body: screens.elementAt(_selectedIndex),

            bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 20,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.blue[300]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      
    );
  }
}