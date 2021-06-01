import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mindfulness_flutter/model/yogaPostures_model.dart';
import 'package:mindfulness_flutter/utlities/navigator.dart';
import 'package:mindfulness_flutter/widget/elevated_widget.dart';
import 'package:mindfulness_flutter/widget/sizedbox_widget.dart';
import 'package:mindfulness_flutter/widget/text_widget.dart';

class YogaPostureDetail extends StatelessWidget {
  final YogaType yogaType;

  const YogaPostureDetail({Key key, this.yogaType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mq.width * 0.026,
              vertical: mq.height * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    pop(context);
                  },
                ),
                Container(
                  height: mq.height * 0.36,
                  child: SvgPicture.asset(yogaType.image),
                ),
                sizedBox(
                  height: mq.height * 0.03,
                ),
                buildText(
                  yogaType.imageText,
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.headline6.fontSize,
                ),
                sizedBox(
                  height: mq.height * 0.02,
                ),
                buildText(
                  yogaType.desc,
                  fontSize: Theme.of(context).textTheme.bodyText2.fontSize,
                ),
                sizedBox(
                  height: mq.height * 0.17,
                ),
                buildElevatedButton(
                  context,
                  textElevatedButton: "Let's do it!",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
