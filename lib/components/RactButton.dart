
import 'package:flutter/material.dart';

class MyRactBtn extends StatelessWidget{
  const MyRactBtn({super.key, required this.BtnName, this.IconData, required this.onPress,});
  final String BtnName ;
  final IconData;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context){
    return Expanded(
                child: InkWell(
                  onTap: onPress,
                  child:
                  Container(
                   height: 50,
                   decoration: BoxDecoration(
                    color:Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                   ),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(IconData,color:Theme.of(context).colorScheme.primaryContainer,
                      size: 25,
                      ),
                      const SizedBox(width: 10,),
                      Text(BtnName,style:
                       TextStyle( 
                         fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primaryContainer,
                       )),
                    ],
                   ),
                  ),
                ),
              );
  }
}