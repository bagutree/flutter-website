import 'package:responsive_framework/responsive_framework.dart';
import 'components/colors.dart';
import 'components/spacing.dart';
import 'components/typography.dart';
import 'package:website/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TeamInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      padding: EdgeInsets.all(40),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          constraints: BoxConstraints(maxWidth: 780),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Image.asset("assets/images/logo.png",
                        width: 175, height: 175, fit: BoxFit.fill),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "一个自组织的开源团队，来自各大厂的工程师们，",
                          style: headlineSecondaryTextStyle),
                      TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: "敢于分享",
                          style: headlineSecondaryTextStyle.copyWith(
                              color: primary)),
                      TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: "，勇往直前，",
                          style: headlineSecondaryTextStyle.copyWith(
                              color: primary)),
                      TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: "努力让技术不再晦涩难懂，让工作更加游刃有余，让生活更加充实自在。",
                          style: headlineSecondaryTextStyle),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: ResponsiveRowColumn(
                  layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  rowCrossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ResponsiveRowColumnItem(
                      child: TextButton(
                        onPressed: () =>
                            openUrl("https://juejin.cn/user/3993042275539886"),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(primary),
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered))
                                  return buttonPrimaryDark;
                                if (states.contains(MaterialState.focused) ||
                                    states.contains(MaterialState.pressed))
                                  return buttonPrimaryDarkPressed;
                                return primary;
                              },
                            ),
                            // Shape sets the border radius from default 3 to 0.
                            shape: MaterialStateProperty.resolveWith<
                                OutlinedBorder>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.focused) ||
                                    states.contains(MaterialState.pressed))
                                  return RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(0)));
                                return RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0)));
                              },
                            ),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.symmetric(
                                        vertical: 32, horizontal: 84)),
                            // Side adds pressed highlight outline.
                            side: MaterialStateProperty.resolveWith<BorderSide>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.focused) ||
                                  states.contains(MaterialState.pressed))
                                return BorderSide(
                                    width: 3,
                                    color: buttonPrimaryPressedOutline);
                              // Transparent border placeholder as Flutter does not allow
                              // negative margins.
                              return BorderSide(width: 3, color: Colors.white);
                            })),
                        child: Text(
                          "关注",
                          style: buttonTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: FlatButton(
                          onPressed: () => {},
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0))),
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: Icon(
                                  Icons.play_circle_filled,
                                  size: 24,
                                  color: primary,
                                ),
                              ),
                              Text(
                                "6000+",
                                style: buttonTextStyle.copyWith(
                                    fontSize: 16, color: primary),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: "团队成员: ", style: bodyTextStyle),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl("https://www.jianshu.com/u/77699cd41b28");
                          },
                        text: "i校长",
                        style: bodyLinkTextStyle),
                    TextSpan(text: "，", style: bodyTextStyle),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl("");
                          },
                        text: "伟奇",
                        style: bodyLinkTextStyle),
                    TextSpan(text: "，", style: bodyTextStyle),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl("");
                          },
                        text: "强哥",
                        style: bodyLinkTextStyle),
                    TextSpan(text: "，", style: bodyTextStyle),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl("");
                          },
                        text: "东哥",
                        style: bodyLinkTextStyle),
                    TextSpan(text: "，", style: bodyTextStyle),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl("");
                          },
                        text: "arige",
                        style: bodyLinkTextStyle),
                    TextSpan(text: "，", style: bodyTextStyle),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl("https://www.jianshu.com/u/3c084cab313c");
                          },
                        text: "大泊",
                        style: bodyLinkTextStyle),
                    TextSpan(text: "，", style: bodyTextStyle),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl("https://www.jianshu.com/u/4a4eb4feee62");
                          },
                        text: "薇薇",
                        style: bodyLinkTextStyle),
                    TextSpan(text: "，", style: bodyTextStyle),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl("");
                          },
                        text: "浩仔",
                        style: bodyLinkTextStyle),
                    TextSpan(text: "，", style: bodyTextStyle),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl("");
                          },
                        text: "gaolhjy",
                        style: bodyLinkTextStyle),
                    TextSpan(text: "，", style: bodyTextStyle),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl("");
                          },
                        text: "SkyKai",
                        style: bodyLinkTextStyle),
                    TextSpan(text: "，", style: bodyTextStyle),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl("");
                          },
                        text: "Ace",
                        style: bodyLinkTextStyle),
                    TextSpan(text: "，", style: bodyTextStyle),
                  ]),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
