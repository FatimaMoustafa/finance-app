import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/features/home_page/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget>screens = [
    HomePageScreen(),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blueGrey,
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.whiteColor,
            elevation: 1,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: AppColors.neutralGreyColor,
            type: BottomNavigationBarType.fixed,
            onTap: (value){
            setState(() {
              currentIndex = value;
            });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home, size: 24.sp,), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.manage_history, size: 24.sp,), label: "Statistic"),
              BottomNavigationBarItem(icon: Container(
                width: 48.w,
                height: 48.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.add, size: 24.sp,color: AppColors.whiteColor,)), label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.credit_card, size: 24.sp,), label: "My Card"),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined, size: 24.sp,), label: "Profile"),
            ],
        ),
      ),
    );
  }
}
