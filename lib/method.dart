import 'package:flutter/material.dart';
import 'package:horse_rider/main.dart';
import 'package:horse_rider/position.dart';
import 'secondpage.dart';
class dialog
{


  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator
            .push(
            context,
            MaterialPageRoute(
                builder: (context) => MyApp()

            )
        );
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Game over"),
      content: Text("You can't move anywhere"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showWonDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator
            .push(
            context,
            MaterialPageRoute(
                builder: (context) => secondpage()

            )
        );
      },
    );

    // Create AlertDialog
    AlertDialog alert1 = AlertDialog(
      title: Text("You won"),
      content: Text("Your horse riding skill is well"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert1;
      },
    );
  }


}