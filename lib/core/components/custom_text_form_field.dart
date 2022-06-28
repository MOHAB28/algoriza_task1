import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../resources/font_manager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    double height = 55.0,
    double borderRadius = 3.0,
    double borderWidth = 1.0,
    Color borderColor = const Color.fromRGBO(224, 224, 224, 1),
    Color hintTextColor = const Color.fromRGBO(224, 224, 224, 1),
    bool showCounterPicker = false,
    required TextInputType keyboardType,
    required String validatorText,
    required String hintText,
    required String title,
    Color titleColor = Colors.black54,
  })  : _height = height,
        _borderRadius = borderRadius,
        _borderWidth = borderWidth,
        _borderColor = borderColor,
        _hintTextColor = hintTextColor,
        _showCounterPicker = showCounterPicker,
        _keyboardType = keyboardType,
        _validatorText = validatorText,
        _hintText = hintText,
        _title = title,
        _titleColor = titleColor,
        super(key: key);

  final double _height;
  final double _borderRadius;
  final double _borderWidth;
  final Color _borderColor;
  final Color _hintTextColor;
  final bool _showCounterPicker;
  final TextInputType _keyboardType;
  final String _validatorText;
  final String _hintText;
  final String _title;
  final Color _titleColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _title,
          style: TextStyle(
            fontSize: FontSize.s17,
            color: _titleColor,
          ),
        ),
        const SizedBox(height: 8.0),
        Container(
          height: _height,
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_borderRadius),
            border: Border.all(
              color: _borderColor,
              width: _borderWidth,
            ),
          ),
          child: Center(
            child: Row(
              children: [
                if (_showCounterPicker) ...[
                  CountryCodePicker(
                    onChanged: print,
                    initialSelection: 'IT',
                    favorite: const ['+39', 'FR'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  ),
                  const SizedBox(width: 8),
                ],
                Expanded(
                  child: TextFormField(
                    keyboardType: _keyboardType,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return _validatorText;
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: _hintText,
                      hintStyle: TextStyle(color: _hintTextColor),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
