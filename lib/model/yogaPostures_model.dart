class YogaType {
  String imageText;
  String desc;
  String image;
  bool colorindex;
  YogaType({
    this.desc,
    this.imageText,
    this.image,
    this.colorindex,
  });
}

List<YogaType> getYoga = [
  YogaType(
    imageText: "Triangle\nTrikonasana",
    image: "assets/extended.svg",
    colorindex: true,
    desc:
        "The Triangle is one of those postures that brings to your body many benefits. For example, it  improves the flexibility of your spine; it helps with the alignment of your shoulders; it relieves back pain and stiffness in the neck area, but don’t forget you need to practice each posture on the left and right site – balancing your postures is very important. With the practice of this posture you will notice many improvements, but especially for your posture.",
  ),
  YogaType(
    imageText: "Bridge\nBandha Sarvangasana",
    image: "assets/bow.svg",
    colorindex: false,
    desc:
        "The Bridge yoga pose is a great front hip joints opener, it also strengthens your spine, opens the chest, and improves your spinal flexibility in addition to stimulating your thyroid. This pose brings many benefits to your body, such as the relief from stress, anxiety, insomnia and it can help with depression.",
  ),
  YogaType(
    imageText: "Four Limbed Staff\nChaturanga",
    image: "assets/plank.svg",
    colorindex: false,
    desc:
        "The Four Limbed Staff yoga pose strengthens your arms, wrists and abdomen. It is also a good preparation pose for more challenging arm balancing poses",
  ),
  YogaType(
    imageText: "Tree\nVrksasana",
    image: "assets/tree.svg",
    colorindex: false,
    desc:
        "The Tree yoga pose may seems as another easy posture but it is not a resting asana. Your back should be aligned property (extended), your hips should be at one level, and since your stability depends on the distribution of your weight on your standing leg ensure you do while maintaing and improving your balance.",
  ),
];
