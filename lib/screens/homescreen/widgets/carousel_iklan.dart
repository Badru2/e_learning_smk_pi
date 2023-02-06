import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_learning_smk_pi/screens/login/widgets/passwordlogin.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselHomeScreen extends StatefulWidget {
  const CarouselHomeScreen({super.key});

  @override
  State<CarouselHomeScreen> createState() => _CarouselHomeScreenState();
}

class _CarouselHomeScreenState extends State<CarouselHomeScreen> {
  int activeIndex = 0;
  final List imgList = [
    'assets/image/Rectangle 35.png',
    'assets/image/rectangle 36.png',
    // 'assets/image/Rectangle 27.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
            itemCount: imgList.length,
            itemBuilder: (context, index, realIndex) {
              final imgLists = imgList[index];

              return buildImage(imgLists, index);
            },
            options: CarouselOptions(
              height: 165,
              autoPlay: true,
              onPageChanged: (index, reason) =>
                  SetState(() => activeIndex = index),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          buildIndicator(),
        ],
      ),
    );
  }

  Widget buildImage(String imgLists, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        width: 350,
        color: Colors.grey,
        child: Image.asset(
          imgLists,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imgList.length,
        effect: const SlideEffect(
          dotHeight: 5,
          dotWidth: 5,
        ),
      );
}
