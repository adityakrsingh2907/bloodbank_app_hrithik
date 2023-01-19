import 'package:bloodbank_app/constants/onboardingdata.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: onboardingData
                  .map(
                    (singleOnboardingScreen) => onboardingWidget(
                      imageUrl: singleOnboardingScreen["image_url"]!,
                      text: singleOnboardingScreen["text"]!,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget onboardingWidget(
      {required String imageUrl, String text = "", int? index}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Image.asset(
            imageUrl,
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 57.0,
            right: 56.0,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}



// import 'package:bloodbank_app/constants/onboardingdata.dart';
// import 'package:flutter/material.dart';

// class OnboardingPage extends StatelessWidget {
//   const OnboardingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           color: Color(0xffFA4848),
//           width: double.infinity,
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: onboardingData
//                   .map(
//                     (onboardingSingleData) =>
//                         onboardingWidget(onboardingSingleData),
//                   )
//                   .toList(),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Column onboardingWidget(Map<String, String> onboardingSingleData) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Image.asset(
//           onboardingSingleData["image_url"]!,
//         ),
//         Container(
//           padding: EdgeInsets.only(
//             left: 57,
//             right: 56,
//           ),
//           child: Text(
//             onboardingSingleData["text"]!,
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 18, color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }
// }








// import 'package:flutter/material.dart';

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           color: Color(0xffFA4848),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Image.asset(
//                 "assets/health_check.png",
//               ),
//               Container(
//                 padding: EdgeInsets.only(
//                   left: 57,
//                   right: 56,
//                 ),
//                 child: Text(
//                   "To be a responsible donor, you must get a check-up.",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
