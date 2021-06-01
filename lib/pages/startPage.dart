import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mindfulness_flutter/pages/signup_page.dart';
import 'package:mindfulness_flutter/utlities/navigator.dart';
import 'package:mindfulness_flutter/utlities/string_text.dart';
import 'package:mindfulness_flutter/widget/elevated_widget.dart';
import 'package:mindfulness_flutter/widget/sizedbox_widget.dart';
import 'package:mindfulness_flutter/widget/text_widget.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: mq.width * 0.026),
            child: Column(
              children: [
                Container(
                  height: mq.height * 0.5,
                  child: SvgPicture.asset("assets/scgo.svg"),
                ),
                buildText(welcomeText,
                    fontWeight: FontWeight.bold,
                    fontSize: Theme.of(context).textTheme.headline5.fontSize),
                sizedBox(height: mq.height * 0.02),
                buildText(quote,
                    textcolor: Colors.grey,
                    fontSize: Theme.of(context).textTheme.headline6.fontSize),
                sizedBox(height: mq.height * 0.11),
                buildElevatedButton(
                  context,
                  textElevatedButton: "Get Started",
                  onPressed: () {
                    push(context, SignupPage());
                  },
                ),
                sizedBox(height: mq.height * 0.03),
                buildRichText(
                  mq,
                  context,
                  textspan: "Already have an account?",
                  textSign: 'Sign in',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRichText(Size mq, BuildContext context,
      {String textspan, String textSign}) {
    return RichText(
      text: TextSpan(
        text: textspan ?? "empty",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ),
        children: [
          WidgetSpan(
            child: SizedBox(
              width: mq.width * 0.02,
            ),
          ),
          TextSpan(
            text: textSign,
            style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: Theme.of(context).textTheme.headline6.fontSize,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint("hello");
              },
          ),
        ],
      ),
    );
  }
}
