import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';

class GetProperCircule extends StatelessWidget {
  const GetProperCircule({
    Key? key,
    required int index,
    required int currentIndex,
  })  : _currentIndex = currentIndex,
        _index = index,
        super(key: key);
  final int _index;
  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.all(4.0),
      width: 40.0,
      height: 10.0,
      decoration: BoxDecoration(
        color: _index == _currentIndex ? ColorManager.skipButton : Colors.grey[300],
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
