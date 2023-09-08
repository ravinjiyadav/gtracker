import 'package:flutter/material.dart';
import 'package:g_tracker/AppComponents/app_colors.dart';

class CommonDialog{


  //Show loading dialog
  static showLoadingDialog(BuildContext ctx) {
    showDialog(
      barrierDismissible: false,
      context: ctx,
      builder: (BuildContext context) {
        return Dialog(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.70,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
//                crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(
                        valueColor:
                        AlwaysStoppedAnimation<Color>(AppColors.themeColor),
                        strokeWidth: 2.0,
                      ),
                      /*Platform.isAndroid
                      ? */
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Please wait...",
                          style: TextStyle(color: Colors.grey, fontSize: 16.0),
                        ),
                      )
//                      : SizedBox(),
                    ]),
              ),
            ));
      },
    );
  }

}