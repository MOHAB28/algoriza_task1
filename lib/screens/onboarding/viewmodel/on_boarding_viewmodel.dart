import 'dart:async';

import '../model/models.dart';
import '../../../core/resources/app_strings.dart';
import '../../../core/resources/image_assets.dart';

class OnBoardingBaseViewmodel extends OnBoardingBaseViewmodelInputs
    with OnBoardingBaseViewmodelOutputs {

  final StreamController<SliderViewObject> _controller =
      StreamController<SliderViewObject>();

  late List<SliderObject> _list;
  int _currentIndex = 0;

  @override
  void start() {
    _list = sliders;
    _updateData();
  }

  @override
  void dispose() {
    _controller.close();
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _updateData();
  }

  @override
  Sink get onBoardingInputs => _controller.sink;

  @override
  Stream<SliderViewObject> get onBoardingOutputs =>
      _controller.stream.map((slider) => slider);

  void _updateData() {
    onBoardingInputs.add(
      SliderViewObject(
        currentIndex: _currentIndex,
        numberOfSlides: _list.length,
        slider: _list[_currentIndex],
      ),
    );
  }

  List<SliderObject> get sliders {
    return [
      SliderObject(AppString.onBoardingTitle1, AppString.onBoardingSubtitle1,
          ImageAssets.onBoardingImage1),
      SliderObject(AppString.onBoardingTitle2, AppString.onBoardingSubtitle2,
          ImageAssets.onBoardingImage2),
      SliderObject(AppString.onBoardingTitle3, AppString.onBoardingSubtitle3,
          ImageAssets.onBoardingImage3),
    ];
  }
}

abstract class OnBoardingBaseViewmodelInputs {
  void start();
  void dispose();
  void onPageChanged(int index);

  Sink get onBoardingInputs;
}

abstract class OnBoardingBaseViewmodelOutputs {
  Stream<SliderViewObject> get onBoardingOutputs;
}
