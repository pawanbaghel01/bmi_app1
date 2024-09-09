import 'package:bmi_app1/components/SecBtn.dart';
import 'package:bmi_app1/controller/PrimaryBtnController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
   PrimaryBtnController btnController = Get.put(PrimaryBtnController());

    return Container(
      padding: const EdgeInsets.all(10),
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
       const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Age",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
              ),
              
            ],
          ),
          Obx(() =>
          Text("${btnController.age.value}",
           style: const TextStyle(fontSize: 50,fontWeight: FontWeight.w400),
           ),),
                   Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SecBtn(onPressed: (){
                        btnController.age.value --; 
                      }, IconData:Icons.minimize),
                      SecBtn(onPressed: (){
                        btnController.age.value ++;
                      }, IconData:Icons.add),
                    ],
                    )
        ],
      ),
    );
  }
}
