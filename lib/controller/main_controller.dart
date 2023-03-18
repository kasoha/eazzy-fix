import 'package:get/get.dart';

class MainController extends GetxController {
  static MainController get to => Get.find();

  var user = <String, dynamic>{}.obs;
}
