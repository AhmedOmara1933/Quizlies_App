import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget {
  String? text;
  IconData? prefixIcon;
  IconData? suffixIcon;

  DefaultAppBar({this.text, this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build;
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //margin: const EdgeInsets.only(right: 90.0),
            decoration: BoxDecoration(
                color: const Color(0xff341d7c),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff1e1046).withOpacity(0.5),
                    // Shadow color
                    spreadRadius: 5.0,
                    // Spread radius
                    blurRadius: 7,
                    // Blur radius
                    offset: const Offset(0, 3),
                  )
                ]),
            child: IconButton(
              icon: Icon(
                prefixIcon,
                color: Colors.white,
                size: 25.0,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 70.0),
            child: Text(
              '$text',
              style: const TextStyle(
                color: Color(0xff34e2b8),
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            //margin: const EdgeInsets.only(right: 90.0),
            decoration: BoxDecoration(
                color: const Color(0xff341d7c),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff1e1046).withOpacity(0.5),
                    // Shadow color
                    spreadRadius: 5.0,
                    // Spread radius
                    blurRadius: 7,
                    // Blur radius
                    offset: const Offset(0, 3),
                  )
                ]),
            child: IconButton(
              icon: Icon(
                suffixIcon,
                color: Colors.white,
                size: 25.0,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}