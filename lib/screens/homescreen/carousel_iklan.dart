// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:e_learning_smk_pi/screens/login/passwordlogin.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class CarouselHomeScreen extends StatefulWidget {
//   const CarouselHomeScreen({super.key});

//   @override
//   State<CarouselHomeScreen> createState() => _CarouselHomeScreenState();
// }

// class _CarouselHomeScreenState extends State<CarouselHomeScreen> {
//   int activeIndex = 0;
//   final List imgList = [
//     'assets/image/Rectangle 35.png',
//     'assets/image/rectangle 36.png',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> imageSliders = imgList
//         .map(
//           (item) => Container(
//             height: 100,
//             child: Container(
//               margin: const EdgeInsets.symmetric(vertical: 19, horizontal: 2.0),
//               child: ClipRRect(
//                   borderRadius: const BorderRadius.all(Radius.circular(5.0)),
//                   child: Stack(
//                     children: <Widget>[
//                       Image.asset(
//                         item,
//                         fit: BoxFit.cover,
//                         width: 1000.0,
//                       ),
//                       Positioned(
//                         bottom: 0.0,
//                         left: 0.0,
//                         right: 0.0,
//                         child: Container(
//                           decoration: const BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 Color.fromARGB(200, 0, 0, 0),
//                                 Color.fromARGB(0, 0, 0, 0)
//                               ],
//                               begin: Alignment.bottomCenter,
//                               end: Alignment.topCenter,
//                             ),
//                           ),
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 10.0, horizontal: 10.0),
//                         ),
//                       ),
//                     ],
//                   )),
//             ),
//           ),
//         )
//         .toList();

//     return SizedBox(
//       child: Column(
//         children: [
//           CarouselSlider.builder(
//             options: CarouselOptions(
//               onPageChanged: (index, reason) =>
//                   SetState(() => activeIndex = index),
//               autoPlay: true,
//               aspectRatio: 2.0,
//               enlargeCenterPage: true,
//             ),
//             itemBuilder: (context, index, realIndex) {
//               final imageSlider = imageSliders[index];

//               return buildImage(imageSlider, index);
//             },
//             itemCount: imageSliders.length,
//           ),
//           const SizedBox(
//             height: 32,
//           ),
//           buildIndicator()
//         ],
//       ),
//     );
//   }

//   Widget buildImage(String imageSlider, int index) => Container(
//         margin: EdgeInsets.symmetric(horizontal: 12),
//         width: double.infinity,
//         child: Image.asset(imageSlider, fit: BoxFit.cover),
//       );
//   Widget buildIndicator() =>
//       AnimatedSmoothIndicator(activeIndex: activeIndex, count: imgList.length);
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_learning_smk_pi/screens/login/passwordlogin.dart';
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
