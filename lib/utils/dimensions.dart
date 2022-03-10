import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double paddingLeft = screenHeight / 84.4;

  static double paddingRight = screenHeight / 84.4;
}



//   //height vectors
//   //for page container(image): 821/310 = 2.64
//   static double pageView = screenHeight / 2.64;
//   //for page container(image): 821/220 = 3.73
//   static double pageViewContainer = screenHeight / 3.73;
//   //for page container(image): 821/120 = 6.34
//   static double pageViewTextContainer = screenHeight / 6.34;

//   //examples of some things to do when testing with other devices too
//   // for this project its just one emulator

//   //dynamic height for padding and margin
//   static double height10 = screenHeight / 84.4;
//   static double height15 = screenHeight / 84.4;
//   static double height20 = screenHeight / 84.4;

// //dynamic font sizes
//   static double font20 = screenHeight / 42.2;
//   static double font10 = screenHeight / 42.2;

// //dynamic radius
//   static double radius20 = screenHeight / 42.2;

// // icon size
// //24 for icon default size
//   static double icon24 = screenHeight / 35.17;