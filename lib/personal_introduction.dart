import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'components/colors.dart';
import 'components/icons.dart';
import 'components/spacing.dart';
import 'components/typography.dart';

class PersonalIntroductions extends StatelessWidget {
  final List<PersonalInfo> list;

  const PersonalIntroductions({Key key, this.list}) : super(key: key);

  List<ResponsiveRowColumnItem> buildItem() {
    return list
        .map((e) => ResponsiveRowColumnItem(
              rowFlex: 1,
              rowFit: FlexFit.tight,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: new Border.all(color: Colors.amber, width: 2.0),
                        borderRadius: BorderRadius.circular(80.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(e.headPath),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Text(e.nikeName,
                        style: headlineSecondaryTextStyle,
                        textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Text(e.title,
                        style: bodyTextStyle, textAlign: TextAlign.center),
                  ),
                  Text(e.detail,
                      style: bodyTextStyle, textAlign: TextAlign.center),
                ],
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        columnCrossAxisAlignment: CrossAxisAlignment.center,
        columnMainAxisSize: MainAxisSize.min,
        rowPadding: EdgeInsets.symmetric(horizontal: 80, vertical: 80),
        columnPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        columnSpacing: 50,
        rowSpacing: 50,
        children: buildItem(),
      ),
    );
  }
}

class PersonalInfo {
  final String headPath;
  final String nikeName;
  final String title;
  final String detail;

  PersonalInfo(
    this.headPath,
    this.nikeName,
    this.title,
    this.detail,
  );
}

List<PersonalInfo> PERSONAL_LISTS_1 = [
  PersonalInfo("assets/images/head-weiqi.png", "伟奇", "Android系统工程师",
      "目前就职于某大厂，工作四年，擅长语言Java、Kotlin，了解Flutter、C++/C、FFMPEG、OPENGL等语言开发，成长经历：通过算法的上机考试进入三星，从三星手机native底层一路做到上层的应用，一路上结识很多伙伴。加入该组织目的是结识很多志同道合的人，把自己的知识和大家一起分享，独乐乐不如众乐乐。业余爱好：喜欢篮球、台球、羽毛球。梦想：希望通过自己努力买一套属于自己的房子"),
  PersonalInfo("assets/images/head-sky.png", "SkyKai", "Android工程师，入门级全栈工程师",
      "终身学习&多元思维实践者，工作多年的 Android 工程师。从创业团队到BAT。同时业余时间运营 #公众号：SkyKai"),
  PersonalInfo("assets/images/head-junjun.png", "arige", "Android工程师",
      "2年左右的app开发，5年多广告sdk开发，工作的主要内容是广告sdk的开发维护，对程序化广告相关内容有较多的了解，对android的基础工具有一定的了解，包括打包、性能优化、CI/CD等。工作之余也对python、android逆向有一定了解，对逆向修改、调试都有一定的经验。初心：期望通过该组织可以结交更多志同道合的朋友，一起可以做一些有意义有价值的事情，憧憬：也希望通过该组织能帮助一些人，一起成长。"),
];

List<PersonalInfo> PERSONAL_LISTS_2 = [
  PersonalInfo("assets/images/head-ww.png", "薇薇", "Android工程师",
      "就职于某科技媒体公司，熟悉Java、Kotlin等；简书程序员专题主编，业余喜欢摄影、咖啡等。希望在越来越卷的时候，继续保持初心。公众号：小彤花园。座右铭：首先自己要发光发热"),
  PersonalInfo("assets/images/head-di.png", "荒天帝", "Android专家",
      "9年Android经验，擅长各种类型的App开发及性能优化，擅长面试辅导及面试经验总结，擅长人脉搭建与拓展,职场生存和个人能力提升，希望通过该组织光交志同道合的好友。初心：一起做有意义的事并争取实现个人，组织的价值，希望我们可以成为互联网第一大知识分享组织"),
  PersonalInfo("assets/images/head-ace.png", "Ace", "Android工程师",
      "就职于某大厂从事应用程序开发工作。熟悉Java、Kotlin等开发语言。对于Jetpack以及应用架构有比较深入的理解。业余喜欢读书、音乐等。长期主义者、对于高效工作执着。希望通过该组织认识更多热爱技术分享的小伙伴。共同学习持续提升。个人公众号：OAOAAce"),
];

List<PersonalInfo> PERSONAL_LISTS_3 = [
  PersonalInfo("assets/images/head-zzy.png", "i校长", "全栈工程师",
      "工作七年有余，主Android方向，语言擅长Java、Kotlin、Dart、Js，进修中Python、C++，喜欢分享技术，一个在大厂工作的大专毕业生，创建这个组织的初心：让更多的人参与技术分享，利用业余时间不断提高自己，机会大概率是会眷顾努力的人，越努力越幸运，躺平是不可能了。我们的愿景：让您的技术更上一层楼，到那时：会当凌绝顶，一览众山小。我的做事指南：简单即高效。"),
  PersonalInfo("assets/images/head-gao.png", "gaolhjy", "项目经理",
      "目前就职于某上市公司，高级项目经理，工作8年。职场经历从体制内传统行业，到从事5年Android开发，后内部转岗为项目经理。目前从事产品和项目管理相关工作，对运营也有一定程度的了解。加入该组织是将秉承“利他即利己”的思想，把自己的知识分享给大家。能提供的资源为：体制内职场生存法则；买房经验分享。人生格言是：站在10年后思考今天。"),
];

List<PersonalInfo> PERSONAL_LISTS_4 = [
  PersonalInfo("assets/images/head-haobo.png", "大泊", "大数据开发平台工程师",
      "目前就职于一家海外直播平台公司，任大数据平台开发工程师一职。对大数据生态各个组件有一定的理解。技术栈包括但不限于：HDFS、yarn、hbase、hive、spark、flink、flume、kafka等大数据组件。对Java、Scala都有一定的理解。致力于深耕大数据领域，不断丰富知识体系，用最直白的方式传播知识。加入八股树，夯实知识体系，持续学习输出，打造互联网顶尖技术领域输出团队。个人爱好：打球、看书、刷b站。"),
  PersonalInfo("assets/images/head-haozai.png", "浩仔", "后端开发工程师",
      "目前就职于一家海外浏览器公司，任Go后端开发工程师一职。喜欢Go语言，熟悉想关工具链，并一直在学习实践中。加入八股树希望与各位一起学习进步，结交更多的朋友。业余爱好囚徒健身，乒乓球，羽毛球运动。"),
  PersonalInfo(
      "assets/images/head-dong.png", "刘强东", "设计师", "目前失业，天南第一键修，梦想在家工作"),
];
