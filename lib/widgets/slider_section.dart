import 'package:flutter/material.dart';

class SliderSection extends StatefulWidget {
  const SliderSection({super.key});

  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  double height = 170;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff333244),
      ),
      child: Column(
        spacing: 20,
        children: [
          Text(
            "Height",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),

          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: height.round().toString(),
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
                TextSpan(text: "CM", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),

          Slider(
            min: 50,
            max: 200,
            value: height,
            onChanged: (value) {
              height = value;
              setState(() {});
            },
            activeColor: Color(0xffE83D67),
            inactiveColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
