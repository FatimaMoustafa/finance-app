import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/home_page/widgets/card_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int currentIndexPage = 0;

  // List of cards
  final List<Widget> items = [
    CardItemWidget(
      cardName: 'X-Card',
      balance: 23400,
      cardNumber: 3434,
      date: '12/24',
    ),
    CardItemWidget(
      cardName: 'M-Card',
      balance: 3209,
      cardNumber: 4545,
      date: '12/18',
    ),
    CardItemWidget(
      cardName: 'X-Card',
      balance: 23400,
      cardNumber: 3434,
      date: '12/24',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            padEnds: false,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndexPage = index;
              });
            },
          ),
          items: items,
        ),
        HeightSpace(height: 16),
        DotsIndicator(
          dotsCount: items.isEmpty ? 1 : items.length,
          position: items.isEmpty ? 0.0 : currentIndexPage.toDouble(),
          decorator: DotsDecorator(
            spacing: EdgeInsets.symmetric(horizontal: 4.w),
            color: const Color(0xffE3E9ED),
            size: const Size.square(9.0),
            activeColor: AppColors.primaryColor,
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ),
      ],
    );
  }
}
