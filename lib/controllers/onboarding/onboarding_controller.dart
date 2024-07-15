import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{

static OnBoardingController get instance =>Get.find();

///variables
final pageController=PageController();
Rx<int> currentPageIndex=0.obs;

///update current index when page scroll
void updatePageIndicator(index) =>currentPageIndex.value=index;

/// jump to the specific dot selected page
void dotNavigatioClick(index){
  currentPageIndex.value=index;
  pageController.jumpTo(index);
}
  
///update current index & jump to next page
void nextPage(){
  if(currentPageIndex.value==2){
    //go to login screen
  }else{
    int page=currentPageIndex.value+1;
    pageController.jumpToPage(page);
  }
}


///update current index & jump to the last page
void skipPage(BuildContext context){
currentPageIndex.value=2;

  pageController.jumpToPage(2);

  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
}
}