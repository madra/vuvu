import 'package:flutter/material.dart';
import 'package:vuvu/helper/theme.dart';
import 'package:vuvu/helper/utility.dart';
import 'package:vuvu/page/settings/widgets/headerWidget.dart';
import 'package:vuvu/page/settings/widgets/settingsRowWidget.dart';
import 'package:vuvu/widgets/customAppBar.dart';
import 'package:vuvu/widgets/customWidgets.dart';
import 'package:vuvu/widgets/newWidget/title_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TwitterColor.white,
      appBar: CustomAppBar(
        isBackButton: true,
        title: customTitleText(
          'About Fwitter',
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          HeaderWidget(
            'Help',
            secondHeader: true,
          ),
          SettingRowWidget(
            "Help Centre",
            vPadding: 15,
            showDivider: false,
            onPressed: (){
              launchURL("https://github.com/TheAlphamerc/vuvu/issues");
            },
          ),
          HeaderWidget('Legal'),
          SettingRowWidget(
            "Terms of Service",
            showDivider: true,
          ),
          SettingRowWidget(
            "Privacy policy",
            showDivider: true,
          ),
          SettingRowWidget(
            "Cookie use",
            showDivider: true,
          ),
          SettingRowWidget(
            "Legal notices",
            showDivider: true,
            onPressed: () async {
              showLicensePage(
                context: context,
                applicationName: 'Fwitter',
                applicationVersion: '1.0.0',
                useRootNavigator: true,
              );
            },
          )
        ],
      ),
    );
  }
}
