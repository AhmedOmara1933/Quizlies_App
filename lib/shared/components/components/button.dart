import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  String text;
  Color? backgroundColor;
  Color? backgroundText;
  IconData? icon;
  Function? function;

  DefaultButton(
      {required this.text,
        this.backgroundColor,
        this.backgroundText,
        this.icon,
        this.function});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(color: const Color(0xff352373), width: 3.0)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 55.0,
      ),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        onPressed: () {
          if (function != null) {
            function!();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30.0,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 30.0),
              child: Text(
                text,
                style: TextStyle(color: backgroundText, fontSize: 28.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}