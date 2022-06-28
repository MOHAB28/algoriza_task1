import 'package:flutter/material.dart';

import '../model/models.dart';


class PageViewItemBuilder extends StatelessWidget {
  const PageViewItemBuilder({
    Key? key,
    required SliderObject sliderObject,
  })  : _sliderObject = sliderObject,
        super(key: key);
  final SliderObject _sliderObject;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Image(
            image: AssetImage(_sliderObject.image),
            width: double.infinity,
          ),
          Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 10.0),
          Text(
            _sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
