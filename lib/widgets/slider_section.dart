import 'package:flutter/material.dart';

class SliderSection extends StatefulWidget {
  final Function(double) onHeightChanged;

  const SliderSection({super.key, required this.onHeightChanged});

  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  double height = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff333244),
      ),
      child: Column(
        children: [
          Text(
            "Height",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),

          SizedBox(height: 15),

          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: height.round().toString(),
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
                TextSpan(text: " CM", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),

          Slider(
            min: 0,
            max: 250,
            value: height,
            activeColor: Color(0xffE83D67),
            inactiveColor: Colors.white,
            onChanged: (value) {
              setState(() {
                height = value;
              });

              widget.onHeightChanged(value);
            },
          ),
        ],
      ),
    );
  }
}
