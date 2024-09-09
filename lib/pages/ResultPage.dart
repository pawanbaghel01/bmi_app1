import 'package:bmi_app1/components/RactButton.dart';
import 'package:bmi_app1/controller/PrimaryBtnController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});
  @override
  Widget build(BuildContext context) {
    PrimaryBtnController btnController = Get.put(PrimaryBtnController());
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back_ios),
                ),
                const Text(
                  "Back",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Your BMI Is",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: btnController.colorStatus,
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              child: Obx(
                () => CircularPercentIndicator(
                  radius: 120.0,
                  lineWidth: 20.0,
                  animationDuration: 1000,
                  percent: btnController.tempBMI.value / 100,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text(
                    "${btnController.BMI.value}%",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: btnController.colorStatus,
                    ),
                  ),
                  progressColor: btnController.colorStatus,
                  backgroundColor: btnController.colorStatus.withOpacity(0.3),
                  footer: Text(
                    "${btnController.BMIStatus.value}",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: btnController.colorStatus,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "->  Your current BMI is: ${btnController.BMI.value}%                                                 ->  And your wieght is: ${btnController.weight.value} kg.                                                 ->  And your heihgt is: ${btnController.height.value.toStringAsFixed(2)} cm. ",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MyRactBtn(
                BtnName: "Finds more",
                IconData: Icons.arrow_back_ios,
                onPress: () {
                  Get.back();
                })
          ],
        ),
      ),
    ));
  }
}
