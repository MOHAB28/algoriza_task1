// on boarding models
class SliderObject {
  String title;
  String subTitle;
  String image;
  SliderObject(this.title,this.subTitle,this.image);
}

class SliderViewObject {
  SliderObject slider;
  int currentIndex;
  int numberOfSlides;
  SliderViewObject({
    required this.currentIndex,
    required this.numberOfSlides,
    required this.slider,
  });
}