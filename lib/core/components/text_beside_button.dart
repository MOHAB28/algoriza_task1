import 'package:flutter/material.dart';

import '../resources/font_manager.dart';

class TextBseidesButton extends StatelessWidget {
  const TextBseidesButton({
    Key? key,
    required String textTitle,
    required String textButtontitle,
    Color textTitleColor = Colors.black,
    Color textButtontitleColor = Colors.blue,
    double fontSize = FontSize.s17,
    required VoidCallback onPressed,
  })  : _textTitle = textTitle,
        _textButtontitle = textButtontitle,
        _textTitleColor = textTitleColor,
        _textButtontitleColor = textButtontitleColor,
        _fontSize = fontSize,
        _onPressed = onPressed,
        super(key: key);
  final String _textTitle;
  final String _textButtontitle;
  final Color _textTitleColor;
  final Color _textButtontitleColor;
  final double _fontSize;
  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$_textTitle ',
          style: TextStyle(
            fontSize: _fontSize,
            fontWeight: FontWeight.bold,
            color: _textTitleColor,
          ),
        ),
        TextButton(
          onPressed: () {
            _onPressed();
          },
          child: Text(
            _textButtontitle,
            style: TextStyle(
              fontSize: _fontSize,
              color: _textButtontitleColor,
            ),
          ),
        ),
      ],
    );
  }
}
