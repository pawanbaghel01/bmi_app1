import 'package:bmi_app1/controller/PrimaryBtnController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    PrimaryBtnController btnController = Get.put(PrimaryBtnController());
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Column(
          children: [
            const Text("Height (cm)",
            style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.w500,
            ),
            ),
            Expanded(
              child:Obx(() =>
              SfSlider.vertical(
                min: 100.0,
                max: 500.0,
                value: btnController.height.value,
                interval: 50,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 1,
                inactiveColor: Colors.black26,
                onChanged: (dynamic value) {
                  btnController.height.value = value;
                },
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
