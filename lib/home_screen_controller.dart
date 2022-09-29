import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  RxBool isSelected = false.obs;
  changeStatus(int index) {
    isSelected.toggle();
  }
}
