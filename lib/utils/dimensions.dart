import 'package:get/get.dart';

class Dimensions {
//  height
  // 781.0909090909091

  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
// screen height devided by 220= containers height
  static double pageViewContainer = screenHeight / 3.389;
  static double pageViewTextContainer = screenHeight / 6.213;
  static double pageView = screenHeight / 2.3299;
//dynamic height of padding and margin
  static double height10 = screenHeight / 74.55999755859375;
  static double height20 = screenHeight / 37.279;
  static double height15 = screenHeight / 52.0727;
//dynamic width of padding and margin

  static double width10 = screenHeight / 74.55999755859375;
  static double width20 = screenHeight / 37.279;
  static double width15 = screenHeight / 52.0727;
  static double width30 = screenHeight / 26.036;

//dynamic font
  static double font20 = screenHeight / 37.279;
  static double radious20 = screenHeight / 37.279;
  static double radious30 = screenHeight / 26.036;
}
