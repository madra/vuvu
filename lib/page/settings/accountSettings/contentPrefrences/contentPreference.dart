import 'package:flutter/material.dart';
import 'package:vuvu/helper/theme.dart';
import 'package:vuvu/model/user.dart';
import 'package:vuvu/page/settings/widgets/headerWidget.dart';
import 'package:vuvu/page/settings/widgets/settingsAppbar.dart';
import 'package:vuvu/page/settings/widgets/settingsRowWidget.dart';
import 'package:vuvu/state/authState.dart';
import 'package:vuvu/widgets/customAppBar.dart';
import 'package:vuvu/widgets/customWidgets.dart';
import 'package:vuvu/widgets/newWidget/customUrlText.dart';
import 'package:provider/provider.dart';

class ContentPrefrencePage extends StatelessWidget {
  const ContentPrefrencePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<AuthState>(context).userModel ?? User();
    return Scaffold(
      backgroundColor: TwitterColor.white,
      appBar: SettingsAppBar(
        title: 'Content preferences',
        subtitle: user.userName,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          HeaderWidget('Explore'),
          SettingRowWidget(
            "Trends",
            navigateTo: 'TrendsPage',
          ),
          Divider(height: 0),
          SettingRowWidget(
            "Search settings",
            navigateTo:null,
            ),

          HeaderWidget('Languages', secondHeader: true,),
          SettingRowWidget(
            "Recommendations",
            vPadding: 15,
            subtitle: "Select which language you want recommended Tweets, people, and trends to include",
            ),
          HeaderWidget('Safety', secondHeader: true,),
          SettingRowWidget("Blocked accounts"),
          SettingRowWidget("Muted accounts"),

        ],
      ),
    );
  }
}
