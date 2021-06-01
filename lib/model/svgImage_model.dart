class SvgImage {
  String imageText;
  String image;
  bool colorindex;
  SvgImage({
    this.imageText,
    this.image,
    this.colorindex,
  });
}

List<SvgImage> getSvgImage = [
  SvgImage(imageText: "Calm", image: "assets/calm.svg", colorindex: true),
  SvgImage(
      imageText: "Anxious", image: "assets/anxiety.svg", colorindex: false),
  SvgImage(
      imageText: "Mindful", image: "assets/brainstorm.svg", colorindex: false),
  SvgImage(imageText: "Health", image: "assets/heart.svg", colorindex: false),
];
