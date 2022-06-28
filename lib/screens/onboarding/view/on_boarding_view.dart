import 'package:flutter/material.dart';
import '../../../core/components/custom_button.dart';
import '../../../core/components/text_beside_button.dart';
import '../../../core/resources/app_strings.dart';
import '../model/models.dart';
import '../components/app_bar.dart';
import '../components/page_view_item.dart';
import '../components/proper_rectangle.dart';
import '../components/skip_button.dart';
import '../viewmodel/on_boarding_viewmodel.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController();
  final OnBoardingBaseViewmodel _viewmodel = OnBoardingBaseViewmodel();

  @override
  void initState() {
    _viewmodel.start();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SliderViewObject>(
      stream: _viewmodel.onBoardingOutputs,
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return const SizedBox();
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: OnBoardingViewAppBar(
              child: SkipButton(
                title: AppString.skip,
                onPressed: () {},
              ),
            ),
            body: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: _controller,
              itemCount: snapshot.data!.numberOfSlides,
              onPageChanged: (index) {
                _viewmodel.onPageChanged(index);
              },
              itemBuilder: (ctx, i) {
                return PageViewItemBuilder(
                  sliderObject: snapshot.data!.slider,
                );
              },
            ),
            bottomSheet: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < snapshot.data!.numberOfSlides; i++)
                        GetProperCircule(
                          currentIndex: snapshot.data!.currentIndex,
                          index: i,
                        )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  CustomButtonBuilder(
                    onPressed: () {},
                    title: AppString.getStarted,
                  ),
                  TextBseidesButton(
                    textButtontitle: AppString.signUp,
                    textTitle: AppString.doNotYouHaveAnAccount,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _viewmodel.dispose();
    super.dispose();
  }
}

