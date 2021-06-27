import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:website/utils/utils.dart';
import 'components/colors.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Color navLinkColor = Color(0xFF6E7274);
    return Container(
      height: 66,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Color(0x1A000000), offset: Offset(0, 2), blurRadius: 4)
      ]),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.menu, color: textPrimary, size: 28)),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () =>
                  Navigator.of(context).popUntil((route) => route.isFirst),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 16, 5),
                child: Text("BaguTree"),
              ),
            ),
          ),
          Spacer(),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: ImageIcon(
                    AssetImage("assets/images/icon_search_64x.png"),
                    color: navLinkColor,
                    size: 24),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => openUrl(""),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("首页",
                      style: TextStyle(
                          fontSize: 16,
                          color: navLinkColor,)),
                ),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => openUrl(""),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Android",
                      style: TextStyle(
                          fontSize: 16,
                          color: navLinkColor,)),
                ),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => openUrl(""),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("大数据",
                      style: TextStyle(
                          fontSize: 16,
                          color: navLinkColor)),
                ),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => openUrl(""),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("算法",
                      style: TextStyle(
                          fontSize: 16,
                          color: navLinkColor)),
                ),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => openUrl(""),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Go",
                      style: TextStyle(
                          fontSize: 16,
                          color: navLinkColor)),
                ),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => openUrl(""),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("项目管理",
                      style: TextStyle(
                          fontSize: 16,
                          color: navLinkColor)),
                ),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => openUrl(""),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("城市扎根",
                      style: TextStyle(
                          fontSize: 16,
                          color: navLinkColor)),
                ),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => openUrl(""),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("其他",
                      style: TextStyle(
                          fontSize: 16,
                          color: navLinkColor)),
                ),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => openUrl('https://juejin.cn/user/3993042275539886'),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Image.asset(
                  "assets/images/juejin.jpeg",
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => openUrl('https://github.com/bagutree'),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: ImageIcon(
                    AssetImage("assets/images/icon_github_64x.png"),
                    color: primaryDark,
                    size: 24),
              ),
            ),
          ),
          // ResponsiveVisibility(
          //   visible: false,
          //   visibleWhen: [Condition.largerThan(name: MOBILE)],
          //   child: Padding(
          //     padding: EdgeInsets.only(left: 8, right: 0),
          //     child: TextButton(
          //       onPressed: () =>
          //           openUrl("https://flutter.dev/docs/get-started/install"),
          //       style: ButtonStyle(
          //           backgroundColor: MaterialStateProperty.all<Color>(primary),
          //           overlayColor: MaterialStateProperty.resolveWith<Color>(
          //             (Set<MaterialState> states) {
          //               if (states.contains(MaterialState.hovered))
          //                 return buttonPrimaryDark;
          //               if (states.contains(MaterialState.focused) ||
          //                   states.contains(MaterialState.pressed))
          //                 return buttonPrimaryDarkPressed;
          //               return primary;
          //             },
          //           ),
          //           // Shape sets the border radius from default 3 to 0.
          //           shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          //             (Set<MaterialState> states) {
          //               if (states.contains(MaterialState.focused) ||
          //                   states.contains(MaterialState.pressed))
          //                 return RoundedRectangleBorder(
          //                     borderRadius:
          //                         BorderRadius.all(Radius.circular(0)));
          //               return RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.all(Radius.circular(0)));
          //             },
          //           ),
          //           padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          //               EdgeInsets.symmetric(vertical: 22, horizontal: 28)),
          //           // Side adds pressed highlight outline.
          //           side: MaterialStateProperty.resolveWith<BorderSide>(
          //               (Set<MaterialState> states) {
          //             if (states.contains(MaterialState.focused) ||
          //                 states.contains(MaterialState.pressed))
          //               return BorderSide(
          //                   width: 3, color: buttonPrimaryPressedOutline);
          //             // Transparent border placeholder as Flutter does not allow
          //             // negative margins.
          //             return BorderSide(width: 3, color: Colors.white);
          //           })),
          //       child: Text(
          //         "支持",
          //         style: buttonTextStyle.copyWith(
          //             fontSize: 16, fontWeight: FontWeight.bold),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
