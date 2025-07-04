import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/home_page/widgets/carousel_widget.dart';
import 'package:finance_app/features/home_page/widgets/custom_home_page_item_widget.dart';
import 'package:finance_app/features/home_page/widgets/top_profile_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.sp),
          child: Column(
            children: [
              HeightSpace(height: 18),
              TopProfileNotificationWidget(),
              HeightSpace(height: 20),
              CarouselWidget(),
              HeightSpace(height: 24),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8.sp,
                    crossAxisSpacing: 16.sp,
                  ),
                  children: [
                    CustomHomePageItemWidget(
                      iconData: Icons.send,
                      title: "Send money",
                      description: "Take acc to acc",
                    ),
                    CustomHomePageItemWidget(
                      iconData: Icons.credit_card,
                      title: "Pay the bill",
                      description: "Lorem ipsum",
                    ),
                    CustomHomePageItemWidget(
                      iconData: Icons.send,
                      title: "Request",
                      description: "Take acc to acc",
                    ),
                    CustomHomePageItemWidget(
                      iconData: Icons.people,
                      title: "Contact",
                      description: "Take acc to acc",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

