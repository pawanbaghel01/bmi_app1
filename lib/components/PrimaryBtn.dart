

import 'package:bmi_app1/controller/PrimaryBtnController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryBtn extends StatelessWidget{
  const PrimaryBtn({super.key, required this.BtnName, this.IconData, required this.onPress,});
  final String BtnName ;
  final IconData;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context){
  PrimaryBtnController btnController = Get.put(PrimaryBtnController());
    return Expanded(
                child: InkWell(
                  onTap: onPress,
                  child: Obx(() => 
                  Container(
                   height: 50,
                   decoration: BoxDecoration(
                    color: btnController.Gender == BtnName ?
                     Theme.of(context).colorScheme.primary:
                    Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(10),
                   ),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(IconData,color: btnController.Gender == BtnName ?
                     Theme.of(context).colorScheme.primaryContainer:
                    Theme.of(context).colorScheme.primary,
                    size: 25,
                      ),
                      const SizedBox(width: 10,),
                      Text(BtnName,style:
                       TextStyle( 
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: btnController.Gender == BtnName ?
                     Theme.of(context).colorScheme.primaryContainer:
                    Theme.of(context).colorScheme.primary,
                       )),
                    ],
                   ),
                  ),
                ),
                )
              );
  }
}