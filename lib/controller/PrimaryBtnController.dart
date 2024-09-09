
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/state_manager.dart';

class PrimaryBtnController extends GetxController{
  RxString Gender= "Male".obs;
  RxInt weight = 12.obs;
  RxInt age = 12.obs;
  RxDouble height =100.0.obs;
  RxDouble tempBMI =0.0.obs;
  RxString BMI ="".obs;
  RxString BMIStatus ="".obs; 
  Color colorStatus =Color(0xff246AFE) ;

  void genderHandle(String gender){
    Gender.value= gender;
  }

  void calculateBMI(){
    var Hmeter =height.value/100;
    tempBMI.value =weight/(Hmeter*Hmeter);
    BMI.value = tempBMI.value.toStringAsFixed(1);
    tempBMI.value = double.parse(BMI.value);

    findStatus();
  }

  void findStatus(){
    if(tempBMI.value < 18.5){
    BMIStatus.value="UnderWeighted";
   colorStatus=Color(0xFFF0E73F);
    }
    if(tempBMI.value < 24.9 && tempBMI.value>18.5){
      BMIStatus.value="Normal";
      colorStatus=Color(0xff00CA39);
    }
     if(tempBMI.value > 25.0 && tempBMI.value < 29.9){
      BMIStatus.value="Over Weight";
      colorStatus=Color(0xFFF34663);
    }
     if(tempBMI.value > 30.0 && tempBMI.value < 34.9){
      BMIStatus.value="OBESE";
      colorStatus=Color(0xffFF0000);
    }
    if(tempBMI.value > 35.0){
      BMIStatus.value="Extremely OBESE";
      colorStatus=Color(0xff000000);
    }
  }

}