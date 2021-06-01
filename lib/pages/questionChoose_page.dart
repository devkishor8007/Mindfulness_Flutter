import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mindfulness_flutter/pages/homepage.dart';
import 'package:mindfulness_flutter/utlities/navigator.dart';
import 'package:mindfulness_flutter/utlities/string_text.dart';
import 'package:mindfulness_flutter/widget/elevated_widget.dart';
import 'package:mindfulness_flutter/widget/sizedbox_widget.dart';
import 'package:mindfulness_flutter/widget/text_widget.dart';

class QuestionChoosePage extends StatefulWidget {
  @override
  _QuestionChoosePageState createState() => _QuestionChoosePageState();
}

class _QuestionChoosePageState extends State<QuestionChoosePage> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mq.width * 0.026,
              vertical: mq.height * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildText(
                  questionText,
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.headline5.fontSize,
                ),
                buildText(
                  'Pick your top goal',
                  textcolor: Colors.grey,
                  fontSize: 16,
                ),
                sizedBox(
                  height: mq.height * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildCircleAVatar(
                      mq,
                      textCircle: "Stress Relief",
                      svgImage: SvgPicture.asset('assets/relief.svg'),
                    ),
                    buildCircleAVatar(
                      mq,
                      backgroundColor: Colors.deepOrange,
                      textCircle: "Curiosity",
                      svgImage: SvgPicture.asset('assets/brain.svg'),
                    ),
                    buildCircleAVatar(
                      mq,
                      textCircle: "Communication",
                      svgImage: SvgPicture.asset('assets/communication.svg'),
                    ),
                  ],
                ),
                sizedBox(
                  height: mq.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildCircleAVatar(
                      mq,
                      textCircle: "Sleeping\nSoundly",
                      svgImage: SvgPicture.asset('assets/sleepy.svg'),
                    ),
                    sizedBox(
                      width: mq.width * 0.03,
                    ),
                    buildCircleAVatar(
                      mq,
                      textCircle: "Managing\nAnxiety",
                      svgImage: SvgPicture.asset('assets/anxiety.svg'),
                    ),
                  ],
                ),
                sizedBox(
                  height: mq.height * 0.33,
                ),
                buildElevatedButton(
                  context,
                  textElevatedButton: "Next",
                  onPressed: () {
                    push(context, HomePage());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCircleAVatar(Size mq,
      {String textCircle, Widget svgImage, Color backgroundColor}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: backgroundColor ?? Colors.grey,
          child: Container(
            height: mq.height * 0.06,
            child: svgImage,
          ),
        ),
        buildText(
          textCircle,
          fontWeight: FontWeight.bold,
          textcolor: Colors.grey,
        ),
      ],
    );
  }
}
