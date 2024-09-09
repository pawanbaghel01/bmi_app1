

import 'package:bmi_app1/controller/themeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChangerBtn extends StatelessWidget{
  const ThemeChangerBtn({super.key});
  @override
  Widget build(BuildContext context){
      ThemeController themeController = Get.put(ThemeController());
    return  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: (){
                  themeController.changeTheme();
                  },
                  child: Row(
                    children: [
                   Icon(Icons.light_mode,
                   color: themeController.isDark.value ? 
                   Theme.of(context).colorScheme.onSecondaryContainer:
                   Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 10,),
                   Icon(Icons.dark_mode,
                   color: themeController.isDark.value ? 
                   Theme.of(context).colorScheme.primary:
                   Theme.of(context).colorScheme.onSecondaryContainer),
                      
                    ],
                          
                  ),
                ),
              )
            ],
           );
  }
}