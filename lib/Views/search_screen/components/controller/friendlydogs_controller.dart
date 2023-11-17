import 'package:get/get.dart';

class FriendlydogsController extends GetxController {
  RxBool dogs = false.obs;
  setNotification(bool value) {
    dogs.value = value;
    print(dogs.value);
  }
}
