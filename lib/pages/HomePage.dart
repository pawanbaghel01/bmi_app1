
import 'package:bmi_app1/components/AgeSelector.dart';
import 'package:bmi_app1/components/HeightSelector.dart';
import 'package:bmi_app1/components/PrimaryBtn.dart';
import 'package:bmi_app1/components/RactButton.dart';
import 'package:bmi_app1/components/ThemeChangerBtn.dart';
import 'package:bmi_app1/components/WeightSelector.dart';
import 'package:bmi_app1/controller/PrimaryBtnController.dart';
import 'package:bmi_app1/pages/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    PrimaryBtnController btnController = Get.put(PrimaryBtnController());

    return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          
          children: [
          const ThemeChangerBtn(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Welcome ",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                    color:Theme.of(context).colorScheme.onSecondaryContainer),
              ),

               Text(
                "Created by",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                    color:Theme.of(context).colorScheme.onSecondaryContainer),
              ),
              
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                    "BMI Calculator",
                    style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color:Theme.of(context).colorScheme.onBackground),
                  ),
                   Text(
                "Pawan Baghel ",
                    style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,
                    color:Theme.of(context).colorScheme.onBackground),
              ),
             ],
           ),
           const SizedBox(height: 20,),
          Row(
            children: [
              PrimaryBtn(BtnName: "Male",IconData: Icons.male,onPress:(){
                btnController.genderHandle("Male");
              }),
               const SizedBox(width: 30,),
              PrimaryBtn(BtnName: "Female",IconData: Icons.female, onPress: () {
               btnController.genderHandle("Female");

              },),
            ],
          ),
         const SizedBox(height: 20,),
         const Expanded(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             HeightSelector(),
               SizedBox(width: 20,),
               Expanded(
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   WeightSelector(),
                    AgeSelector(),
                   ],
                 ),
               ),
            ],
           ),
         ),
         const SizedBox(height: 15,),
         Row(
           children: [
             MyRactBtn(BtnName: "Let's go",IconData: Icons.done_all, onPress: () {  
              btnController.calculateBMI();
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const ResultPage())
              );
             },),
           ],
         ),
          ],
        ),
      ),
    )

    );
  }
}