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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 20,
          children: [
            Row(
              children: [
                GenderBox(
                  title: "Male",
                  icon: Icons.male,
                  isActive: isMale,
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                ),
                SizedBox(width: 20),
                GenderBox(
                  title: 'Female',
                  icon: Icons.female,
                  isActive: !isMale,
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                ),
              ],
            ),

            SliderSection(),

            Row(
              children: [
                DataContainer(title: 'Weight', value: 50),
                SizedBox(width: 20),
                DataContainer(title: 'Age', value: 19),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xffE83D67),
        alignment: Alignment.center,
        height: 100,
        child: Text(
          "Calculate",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
