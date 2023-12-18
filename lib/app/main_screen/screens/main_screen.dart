import 'package:dhaka_live/app/category_screen/screens/category_screen.dart';
import 'package:dhaka_live/app/home_screen/screens/home_screen.dart';
import 'package:dhaka_live/app/profile_screen/screens/profile_screen.dart';
import 'package:dhaka_live/app/search_screen/screens/search_screen.dart';
import 'package:dhaka_live/general/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static const pageRoute = '/main-screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final _pages=[
    HomeScreen(),
    CategoryScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];
  

  int _currentIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index){
          _currentIndex = index;
          
    
          setState(() {
            
          });
        },
        selectedIconTheme: IconThemeData(
          size: 30.w
        ),
        
        selectedItemColor: AppColors.primaryBrandColor,
        unselectedItemColor: AppColors.secondaryTextColor,
        selectedLabelStyle: TextStyle(
          color: AppColors.primaryTextColor,
          fontFamily: "hindu",
          fontSize: 11.sp,
          fontWeight: FontWeight.normal
        ),
        
        
        
        items: [
        BottomNavigationBarItem(icon: Image.asset("assets/icons/home${_currentIndex==0? "o":"g"}.png",width: 24.w,height: 24.h,),label: "হোম"),
        BottomNavigationBarItem(icon: Image.asset("assets/icons/cate${_currentIndex==1? "o":"g"}.png",width: 24.w,height: 24.h,),label: "ক্যাটেগরি"),
        BottomNavigationBarItem(icon: Image.asset("assets/icons/search${_currentIndex==2? "o":"g"}.png",width: 24.w,height: 24.h,),label: "সার্চ"),
        BottomNavigationBarItem(icon: Image.asset("assets/icons/setting${_currentIndex==3? "o":"g"}.png",width: 24.w,height: 24.h,),label: "সার্চ"),
      ]),
      body: _pages[_currentIndex],
    );
  }
}