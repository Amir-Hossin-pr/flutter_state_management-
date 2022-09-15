import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0.obs;
  increment() => count++;
  minus() => count--;
  reset() {
    count.value = 0;
  }
}
