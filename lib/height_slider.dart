import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  final height;
  final Function changevalue;
  HeightSlider({this.height, this.changevalue});

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
          thumbColor: Color(0xFFEB1555),
          activeTrackColor: Colors.white,
          overlayColor: Color(0x29EB1555),
          inactiveTrackColor: Color(0xFF8D8E98)),
      child: Slider(
        value: height.toDouble(),
        onChanged: changevalue,
        min: 120.0,
        max: 240.0,
      ),
    );
  }
}
