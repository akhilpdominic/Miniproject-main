import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:miniproject/screens/barcodeHomepage.dart';
import 'package:miniproject/screens/infopage.dart';

class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: size.height*0.49,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 124, 202, 241)
            ),
          ),
          SafeArea(child: 
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Text("Good Day\nAkhil",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                )),

                SizedBox(height: 140,),

                
                Expanded(
                  child: GridView.count(crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => barcodeHomepage())
                  );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 229, 189, 243),
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: Icon(Icons.airplane_ticket,
                        size: 100,),
                      
                      ),
                    ),
                     GestureDetector(
                       onTap: ()
                      {
                        FirebaseAuth.instance.signOut();
                      },
                       child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 229, 189, 243),
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: Icon(Icons.history,
                        size: 100,),
                                         ),
                     ),
                     Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 229, 189, 243),
                        borderRadius: BorderRadius.circular(13)
                      ),
                      child: Icon(Icons.help,
                      size: 100,),
                    ),
                     Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 229, 189, 243),
                        borderRadius: BorderRadius.circular(13)
                      ),
                      child: Icon(Icons.alarm_add,
                      size: 100,),
                    )
                  ],),
                )


              ],
            ),
          )),

        ],
      ),
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
              tabBackgroundColor: Colors.grey[100]!,
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