import 'package:flutter/material.dart';
import 'package:vuvu/helper/theme.dart';
import 'package:vuvu/model/user.dart';
import 'package:vuvu/page/settings/widgets/headerWidget.dart';
import 'package:vuvu/page/settings/widgets/settingsAppbar.dart';
import 'package:vuvu/page/settings/widgets/settingsRowWidget.dart';
import 'package:vuvu/state/authState.dart';
import 'package:vuvu/widgets/customAppBar.dart';
import 'package:vuvu/widgets/customWidgets.dart';
import 'package:provider/provider.dart';

class DirectMessagesPage extends StatelessWidget {
  const DirectMessagesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<AuthState>(context).userModel ?? User();
    return Scaffold(
      backgroundColor: TwitterColor.white,
      appBar: SettingsAppBar(
        title: 'Direct Messages',
        subtitle: user.userName,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          HeaderWidget('Direct Messages', secondHeader: true,),
          SettingRowWidget(
            "Receive message requests",
            navigateTo: null,
            showDivider: false,
            visibleSwitch: true,
            vPadding: 20,
            subtitle: 'You will be able to receive Direct Message requests from anyone on Fwitter, even if you don\'t follow them.',
          ),
          SettingRowWidget(
            "Show read receipts",
            navigateTo:null,
            showDivider: false,
            visibleSwitch: true,
            subtitle: 'When someone sends you a message, people in the conversation will know you\'ve seen it. If you turn off this setting, you won\'t be able to see read receipt from others.',
            ),
        ],
      ),
    );
  }
}
