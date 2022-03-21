import 'package:flutter/material.dart';
import 'package:jewerly_shopping_app/constants.dart';

class FormBuild extends StatelessWidget {
  final String headline;
  final IconData icon;
  final String placeHolder;

  FormBuild({
    required this.headline,
    required this.icon,
    required this.placeHolder,
  });

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                headline,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: kMainColor,
                  fontSize: 13,
                ),
              ),
            ),
          ),
          Container(
            width: device.width * 0.8,
            child: TextField(
              decoration: InputDecoration(
                hintText: '\t' + placeHolder,
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
                hintStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
                prefixIcon: Icon(
                  icon,
                  color: kMainColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
