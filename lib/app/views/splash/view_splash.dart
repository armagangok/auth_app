// import 'package:flutter/material.dart';
// import 'dart:math' as math;
// import 'package:flutter_svg/svg.dart';

// class SplashView extends StatelessWidget {
//   const SplashView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Positioned(
//             top: 0,
//             left: 0,
//             child: Transform.rotate(
//               angle: 2 * (math.pi / 180),
//               child: SvgPicture.asset(
//                 'assets/images/Rectangle 2.svg',
//                 semanticsLabel: 'rectangle2',
//               ),
//             ),
//           ),
//           Positioned(
//             top: 0,
//             left: 0,
//             child: SvgPicture.asset(
//               'assets/images/Rectangle 1.svg',
//               semanticsLabel: 'rectangle1',
//             ),
//           ),
//           Positioned(
//             top: MediaQuery.of(context).size.height * 0.75,
//             left: 0,
//             child: Transform.rotate(
//               angle: 0 * (math.pi / 180),
//               child: SvgPicture.asset(
//                 'assets/images/Rectangle 3.svg',
//                 semanticsLabel: 'rectangle3',
//               ),
//             ),
//           ),
//           Positioned(
//             top: MediaQuery.of(context).size.height * 0.6,
//             left: MediaQuery.of(context).size.width * 0.1,
//             child: Transform.rotate(
//               angle: 0 * (math.pi / 180),
//               child: SvgPicture.asset(
//                 'assets/images/Call Me!.svg',
//                 semanticsLabel: 'calme',
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
