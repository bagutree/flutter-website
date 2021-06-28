import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'components/colors.dart';
import 'components/spacing.dart';
import 'components/typography.dart';
import 'personal_introduction.dart';
import 'responsive/block_wrapper.dart';
import 'bubble_anim/particle_background.dart';

import 'menu_bar.dart';
import 'team_info.dart';
import 'utils/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "BaguTree",
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget),
        defaultScale: true,
        minWidth: 480,
        defaultName: TABLET,
        breakpoints: [
          ResponsiveBreakpoint.autoScale(480, name: MOBILE),
          ResponsiveBreakpoint.resize(600, name: MOBILE),
          ResponsiveBreakpoint.resize(850, name: TABLET),
          ResponsiveBreakpoint.resize(1080, name: DESKTOP),
        ],
      ),
      home: Stack(children: [
        ParticleBackgroundPage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 66),
            child: MenuBar(),
          ),
          body: ListView.builder(
              itemCount: blocks.length,
              itemBuilder: (context, index) {
                return blocks[index];
              }),
        )
      ]),
      debugShowCheckedModeBanner: false,
    );
  }

  List<Widget> blocks = [
    SizedBox(
      height: 40,
    ),
    BlockWrapper(TeamInfo()),
    BlockWrapper(PersonalIntroductions(
      list: PERSONAL_LISTS_1,
    )),
    BlockWrapper(PersonalIntroductions(
      list: PERSONAL_LISTS_2,
    )),
    BlockWrapper(PersonalIntroductions(
      list: PERSONAL_LISTS_3,
    )),
    BlockWrapper(PersonalIntroductions(
      list: PERSONAL_LISTS_4,
    )),
    BlockWrapper(FlutterNewsRow()),
    Footer(),
  ];
}

class FlutterNewsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: blockMargin,
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        rowSpacing: 25,
        columnSpacing: 32,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: FlutterNewsCard(
              title: "程序员的职业素养",
              imagePath: "assets/images/developer-plan.jpeg",
              linkUrl: "https://juejin.cn/post/6967544598163882020",
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: FlutterNewsCard(
              title: "CodePen now supports Flutter",
              imagePath: "assets/images/news_flutter_codepen.png",
              linkUrl:
                  "https://medium.com/flutter/announcing-codepen-support-for-flutter-bb346406fe50",
            ),
          ),
        ],
      ),
    );
  }
}

class FlutterNewsCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String linkUrl;

  const FlutterNewsCard(
      {Key key,
      @required this.title,
      @required this.imagePath,
      @required this.linkUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(maxHeight: 400),
            child: Image.asset(imagePath, fit: BoxFit.fitWidth),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text("News",
                      style: bodyTextStyle.copyWith(
                        fontSize: 12,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(title, style: headlineSecondaryTextStyle),
                ),
                GestureDetector(
                  onTap: () => openUrl(linkUrl),
                  child: Text("Read More", style: bodyLinkTextStyle),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundDark,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isMobile
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        columnMainAxisSize: MainAxisSize.min,
        children: [
          ResponsiveRowColumnItem(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: Image.asset("assets/images/logo-zzy.png",
                  height: 100, fit: BoxFit.contain),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFit: FlexFit.loose,
            columnFit: FlexFit.loose,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: bodyTextStyle.copyWith(
                        fontSize: 14, color: Colors.white, height: 2),
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              openUrl(
                                  "https://github.com/bagutree/flutter-website");
                            },
                          text: "flutter-website@"),
                      TextSpan(text: "  •  "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              openUrl(
                                  "https://juejin.cn/user/3993042275539886");
                            },
                          text: "BaguTree"),
                      TextSpan(text: "  create by  "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              openUrl("https://juejin.cn/user/131597127135687");
                            },
                          text: "i校长",
                          style: TextStyle(color: Colors.amberAccent)),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      style: bodyTextStyle.copyWith(
                          fontSize: 14, color: Colors.white, height: 1),
                      children: [
                        TextSpan(text: '\n'),
                        TextSpan(
                            text: "如果有什么建议，欢迎提出来哦，加微信入群有惊喜哦： bagutree",
                            style: bodyTextStyle.copyWith(
                                fontSize: 10, color: Colors.white)),
                        TextSpan(text: '\n'),
                      ]),
                ),
                _buildCopyRightText()
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildCopyRightText() {
    return InkWell(
      onTap: () {
        openUrl("http://www.beian.miit.gov.cn/");
      },
      child: Text('京ICP备案20002589号-2',
          style:
              bodyTextStyle.copyWith(fontSize: 10, color: Colors.amberAccent)),
    );
  }
}
