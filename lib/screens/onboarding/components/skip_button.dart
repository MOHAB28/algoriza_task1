import 'package:flutter/material.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key? key,
    required String title,
    double fontSize = FontSize.s16,
    double height = 50.0,
    double borderRaduis = 30.0,
    Color backgroundColor = ColorManager.skipButton,
    required VoidCallback onPressed,
  })  : _height = height,
        _backgroundColor = backgroundColor,
        _fontSize = fontSize,
        _title = title,
        _onPressed = onPressed,
        _borderRaduis = borderRaduis,
        super(key: key);
  final String _title;
  final double _fontSize;
  final double _height;
  final double _borderRaduis;
  final Color _backgroundColor;
  final VoidCallback _onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(_borderRaduis),
      ),
      child: MaterialButton(
        onPressed: () {
          _onPressed();
        },
        height: _height,
        child: Text(
          _title,
          style: TextStyle(fontSize: _fontSize),
        ),
      ),
    );
  }
}
