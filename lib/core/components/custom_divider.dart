import 'package:flutter/material.dart';

import '../resources/app_strings.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    Color color =  const Color.fromRGBO(224, 224, 224, 1),
    double dividerHeight = 3.0,
    double indet = 30.0,
  }) : 
  _color = color,
  _dividerHeight = dividerHeight,
  _indet = indet,
  super(key: key);

    final Color  _color ; 
    final double _dividerHeight ; 
    final double _indet ; 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: _color,
            height: _dividerHeight,
            endIndent: _indet,
          ),
        ),
        Text(
          AppString.or,
          style: TextStyle(color: _color),
        ),
        Expanded(
          child: Divider(
            color: _color,
            indent: _indet,
            height: _dividerHeight,
          ),
        ),
      ],
    );
  }
}
