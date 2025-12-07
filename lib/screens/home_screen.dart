import 'dart:math';
import 'package:bmi_calculator/screens/final_screen.dart';
import 'package:bmi_calculator/widgets/custom_appbar.dart';
import 'package:bmi_calculator/widgets/data_container.dart';
import 'package:bmi_calculator/widgets/gender_container.dart';
import 'package:bmi_calculator/widgets/slider_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  int weight = 30;
  int age = 5;

  double height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                GenderBox(
                  title: "Male",
                  icon: Icons.male,
                  isActive: isMale,
                  onTap: () {
                    setState(() => isMale = true);
                  },
                ),
                SizedBox(width: 20),
                GenderBox(
                  title: 'Female',
                  icon: Icons.female,
                  isActive: !isMale,
                  onTap: () {
                    setState(() => isMale = false);
                  },
                ),
              ],
            ),

            SizedBox(height: 20),

            SliderSection(
              onHeightChanged: (double value) {
                setState(() {
                  height = value;
                });
              },
            ),

            SizedBox(height: 20),

            Row(
              children: [
                DataContainer(
                  title: 'Weight',
                  value: weight,
                  increment: () {
                    if (weight < 201) setState(() => weight++);
                  },
                  decrement: () {
                    if (weight > 0) setState(() => weight--);
                  },
                ),
                SizedBox(width: 20),
                DataContainer(
                  title: 'Age',
                  value: age,
                  increment: () {
                    if (age < 80) setState(() => age++);
                  },
                  decrement: () {
                    if (age > 1) setState(() => age--);
                  },
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: InkWell(
        onTap: () {
          double bmi = weight / pow((height / 100), 2);

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FinalScreen(bmivalue: bmi)),
          );
        },
        child: Container(
          color: Color(0xffE83D67),
          alignment: Alignment.center,
          height: 100,
          child: Text(
            "Calculate",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
