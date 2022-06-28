import 'package:flutter/material.dart';
import 'package:task_1/core/resources/font_manager.dart';

class CustomButtonBuilder extends StatelessWidget {
  const CustomButtonBuilder({
    Key? key,
    required String title,
    required VoidCallback onPressed,
    Color titleColor = Colors.white,
    double height = 70.0,
    double width = double.infinity,
    Color color = Colors.teal,
    double borderRadius = 10.0,
  })  : _title = title,
        _onPressed = onPressed,
        _titleColor = titleColor,
        _height = height,
        _width = width,
        _color = color,
        _borderRadius = borderRadius,
        super(key: key);

  final String _title;
  final VoidCallback _onPressed;
  final Color _titleColor;
  final Color _color;
  final double _height;
  final double _width;
  final double _borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      child: MaterialButton(
        height: _height,
        child: Text(
          _title,
          style: TextStyle(
            fontSize: FontSize.s16,
            color: _titleColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          _onPressed();
        },
      ),
    );
  }
}
