import 'package:get/get.dart';

class GetDropDownController extends GetxController {
  final RxString kFlagValue = "".obs;

  void setSelectedValue(String kNewFLag) {
    kFlagValue.value = kNewFLag;
  }
}
