import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindfulness_flutter/pages/questionChoose_page.dart';
import 'package:mindfulness_flutter/utlities/navigator.dart';
import 'package:mindfulness_flutter/utlities/string_text.dart';
import 'package:mindfulness_flutter/widget/elevated_widget.dart';
import 'package:mindfulness_flutter/widget/outlined_widget.dart';
import 'package:mindfulness_flutter/widget/sizedbox_widget.dart';
import 'package:mindfulness_flutter/widget/text_widget.dart';
import 'package:mindfulness_flutter/widget/textfield_widget.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _username;
  TextEditingController _email;
  TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _username = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.indigo,
            ),
            onPressed: () {
              pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mq.width * 0.026,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildText(
                  'Lets get Started',
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.headline5.fontSize,
                ),
                sizedBox(height: mq.height * 0.01),
                buildText(
                  signupText,
                  textcolor: Colors.grey,
                  fontSize: Theme.of(context).textTheme.headline6.fontSize,
                ),
                sizedBox(height: mq.height * 0.08),
                buildTextField(
                    controller: _username,
                    keyboardType: TextInputType.name,
                    hintText: "username",
                    labelText: "Username"),
                sizedBox(height: mq.height * 0.02),
                buildTextField(
                  controller: _email,
                  hintText: "email",
                  keyboardType: TextInputType.emailAddress,
                  labelText: "Email",
                ),
                sizedBox(height: mq.height * 0.02),
                buildTextField(
                  controller: _password,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: "password",
                  labelText: "Password",
                ),
                sizedBox(height: mq.height * 0.09),
                Center(
                  child: Text(
                    "By continuing you agree to our",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),
                ),
                buildRichText(
                  mq,
                  context,
                  textTerms: 'Terms and Conditions',
                  textPolicy: "Privacy Policy",
                ),
                sizedBox(height: mq.height * 0.05),
                buildElevatedButton(
                  context,
                  textElevatedButton: "Sign Up",
                  onPressed: () {
                    push(
                      context,
                      QuestionChoosePage(),
                    );
                  },
                ),
                sizedBox(height: mq.height * 0.025),
                Center(
                  child: Text(
                    "or",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
                sizedBox(height: mq.height * 0.025),
                buildOutlinedButton(
                  context,
                  textLabel: "Continue with Google",
                  icon: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRichText(
    Size mq,
    BuildContext context, {
    String textspan,
    String textTerms,
    String textPolicy,
  }) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: textTerms,
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.underline,
              decorationThickness: 3,
              fontWeight: FontWeight.bold,
              fontSize: Theme.of(context).textTheme.headline6.fontSize,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint("terms and conditions");
              },
          ),
          WidgetSpan(
            child: SizedBox(
              width: mq.width * 0.01,
            ),
          ),
          TextSpan(
            text: "and",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
          WidgetSpan(
            child: SizedBox(
              width: mq.width * 0.01,
            ),
          ),
          TextSpan(
            text: textPolicy,
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.underline,
              decorationThickness: 3.2,
              fontWeight: FontWeight.bold,
              fontSize: Theme.of(context).textTheme.headline6.fontSize,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint("Policy");
              },
          ),
        ],
      ),
    );
  }
}
