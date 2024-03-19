import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gods_time/pages/home_page.dart';
import 'package:gods_time/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int CurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        items: [
BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/cbi_google-home-icon.svg', height: 22, width: 22),label: 'home'
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/prime_user.svg', height: 35, width: 435),label: 'Profile'
          ),
          BottomNavigationBarItem(
             icon: SvgPicture.asset('assets/svg/mdi_favourite-border.svg', height: 25, width: 25),label: 'Favourite'
          ),
          BottomNavigationBarItem(
             icon: SvgPicture.asset('assets/svg/mynaui_message.svg', height: 30, width: 30),label: 'Message'
          ),
          

        ],
        currentIndex: CurrentIndex,
        onTap: (index) {
         setState(() {
            CurrentIndex = index;
         });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
  final pages = [
    HomePage(),
    ProfilePage(),
    Center(child: Text('Favourite'),),
    Center(child: Text('message'),),
  ];
}
