import 'package:flutter/material.dart';
import 'package:simple_music_app/presentation/widgets/paint_slider.dart';
import 'package:simple_music_app/utils/helper_extension.dart';

class CustomSongSlider extends StatelessWidget {
  const CustomSongSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 10,
      child: CustomPaint(
        painter: PaintSlider(),
      ),
    );
  }
}
