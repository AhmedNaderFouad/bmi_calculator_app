import 'package:bmi_calculator/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class FinalScreen extends StatelessWidget {
  final double bmivalue;

  const FinalScreen({super.key, required this.bmivalue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Result",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff333244),
              ),
              child: Column(
                spacing: 25,
                children: [
                  Text(
                    bmiStatus(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    bmivalue.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    bmiDescription,
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bmiStatus() {
    if (bmivalue <= 18.4) {
      return "UnderWeight";
    } else if (bmivalue >= 18.5 && bmivalue <= 24.9) {
      return "Normal";
    } else if (bmivalue >= 25 && bmivalue <= 29.9) {
      return "OverWeight";
    } else {
      return "Obese";
    }
  }

  String get bmiDescription {
    if (bmivalue <= 18.4) {
      return "You are Underweight. You may need to eat more nutritious food.";
    } else if (bmivalue >= 18.5 && bmivalue <= 24.9) {
      return "You have a Normal BMI. Great job maintaining a healthy weight!";
    } else if (bmivalue >= 25 && bmivalue <= 29.9) {
      return "You are Overweight. Consider a balanced diet and regular activity.";
    } else {
      return "You are Obese. A healthier lifestyle can greatly improve your well-being.";
    }
  }
}
