import 'package:flutter/material.dart';

class AppColors {
  static var background = Color(0xFFf5f6f8);
  static var background_light = Color(0xFFf5f6f8);
  static var button_color = Color(0xFF0966ce);
  static var header_text = Color(0xFF111a61);
  static var white = Color(0xFFFFFFFF);
  static var light_gray = Color(0xFFa1a2a5);
  static var text_light = Color(0xFF949699);
  static var dark_blue = Color(0xFF060923);
  static var red_light = Color(0xFFfee3ec);
  static var blue_light = Color(0xFFcee0f5);
}

/*
class NavigationData {
  static NavigationData instance;
  NavigationData();
  var pr;

  static NavigationData Instance() {

    if ( instance == null ) {
      instance = new NavigationData();
    }
    return instance;
  }
  final GlobalKey<ScaffoldState> dashboardScaffoldKey = new GlobalKey<ScaffoldState>();
  show_snack_bar(text, scaffoldKey) {
    var snackBar =  SnackBar(
      backgroundColor: Colors.red[900],
      content: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 1
        ),
      ),
    );
    scaffoldKey.currentState.showSnackBar(snackBar);
  }

  show_progress_dialog(context, String text) {
    NavigationData.Instance().pr = ProgressDialog(
        context,
        type: ProgressDialogType.Normal,
        isDismissible: false,
        showLogs: false,
    );
    NavigationData.Instance().pr.style(
      message: text,
      borderRadius: 10.0,
      backgroundColor: Colors.white,
      elevation: 10.0,
      insetAnimCurve: Curves.easeInOut,
      progress: 0.0,
      progressWidgetAlignment: Alignment.center,
      maxProgress: 100.0,
      progressTextStyle: TextStyle(
          color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
      messageTextStyle: TextStyle(
          color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w500),
    );
    NavigationData.Instance().pr.show();
  }

  hide_progress_dialog(){
    pr.hide();
  }

}*/
