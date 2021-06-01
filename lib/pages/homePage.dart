import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mindfulness_flutter/model/svgImage_model.dart';
import 'package:mindfulness_flutter/model/yogaPostures_model.dart';
import 'package:mindfulness_flutter/pages/detailYogaPage.dart';
import 'package:mindfulness_flutter/utlities/navigator.dart';
import 'package:mindfulness_flutter/utlities/string_text.dart';
import 'package:mindfulness_flutter/widget/sizedbox_widget.dart';
import 'package:mindfulness_flutter/widget/text_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: buildText(
            "For you",
            textcolor: Colors.black,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                top: mq.height * 0.01,
              ),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/seven.jpg"),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mq.width * 0.026,
              vertical: mq.height * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                rowHeadingIcon(mq),
                makingBanner(mq, context),
                sizedBox(
                  height: mq.height * 0.016,
                ),
                buildText(
                  "Yoga postures",
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.headline5.fontSize,
                ),
                sizedBox(
                  height: mq.height * 0.01,
                ),
                yogaPosturesType(mq, context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget yogaPosturesType(Size mq, BuildContext context) {
    return Container(
      height: mq.height * 0.56,
      child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          staggeredTileBuilder: (index) {
            return StaggeredTile.count(1, index.isEven ? 1.0 : 1.1);
          },
          physics: NeverScrollableScrollPhysics(),
          itemCount: getYoga.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                push(
                    context,
                    YogaPostureDetail(
                      yogaType: getYoga[index],
                    ));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 7.0,
                child: Stack(
                  children: [
                    Container(
                      height: index.isEven ? mq.height * 0.17 : mq.height * 0.2,
                      child: SvgPicture.asset(getYoga[index].image),
                    ),
                    Positioned(
                      bottom: mq.height * 0.01,
                      left: mq.width * 0.01,
                      child: buildText(
                        getYoga[index].imageText,
                        fontSize:
                            Theme.of(context).textTheme.subtitle2.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget makingBanner(Size mq, BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.indigo.withOpacity(0.3),
          ),
          height: mq.height * 0.3,
        ),
        Positioned(
          bottom: mq.height * 0.03,
          left: mq.width * 0.04,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(
                "Ready to start\nmeditation",
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.headline5.fontSize,
              ),
              sizedBox(
                height: mq.height * 0.01,
              ),
              buildText(
                motoText,
                textcolor: Colors.grey,
                fontSize: 17,
              ),
              sizedBox(
                height: mq.height * 0.04,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.play_circle_fill,
                    size: 45,
                  ),
                  buildText(
                    "5 mins",
                    fontSize: 17,
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: mq.width * 0.07,
          top: mq.height * 0.05,
          child: Container(
            height: mq.height * 0.23,
            child: SvgPicture.asset('assets/lotus.svg'),
          ),
        ),
      ],
    );
  }

  Widget rowHeadingIcon(Size mq) {
    return Container(
      height: mq.height * 0.16,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: getSvgImage.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: mq.width * 0.024,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 42,
                  backgroundColor: getSvgImage[index].colorindex == true
                      ? Colors.redAccent
                      : Colors.grey[300],
                  child: SvgPicture.asset(
                    getSvgImage[index].image,
                    height: 45,
                    fit: BoxFit.cover,
                  ),
                ),
                sizedBox(
                  height: mq.height * 0.01,
                ),
                buildText(
                  getSvgImage[index].imageText,
                  fontWeight: getSvgImage[index].colorindex == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
