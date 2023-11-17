
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainWrapperController extends GetxController{
  late  PageController pageController;

  RxInt currentIndex = 0.obs;


  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }

  void changePage(int index){
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  // add onBack function here to close app
  Future<bool> onBack() async {
    return await Get.defaultDialog(
      title: 'Are you sure?',
      titleStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      middleText: 'Do you want to exit the app?',
      middleTextStyle: const TextStyle(
        fontSize: 16,
      ),
      textConfirm: 'Yes',
      textCancel: 'No',
      confirmTextColor: Colors.white,
      buttonColor: Colors.blueAccent,
      cancelTextColor: Colors.white,
      onConfirm: () => Get.back(result: true),
      onCancel: () => Get.back(result: false),
    );
  }


}