import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jewerly_shopping_app/constants.dart';

class BottomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      right: 0,
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "2.572.500 XOF",
              style: TextStyle(color: kTextColor, fontSize: 16),
            ),
            SvgPicture.asset("assets/icons/forwardBtn.svg")
          ],
        ),
        style: TextButton.styleFrom(
            backgroundColor: kMainColor,
            fixedSize: Size((device.width * 0.75), 70),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
              ),
            )),
      ),
    );
  }
}
