import 'package:flutter/material.dart';

class SecBtn extends StatelessWidget {
  const SecBtn({super.key, required this.onPressed,required this.IconData,});
  final VoidCallback onPressed;
  final IconData ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            IconData,
            color: Theme.of(context).colorScheme.primaryContainer,
            size: 25,
          )),
    );
  }
}
