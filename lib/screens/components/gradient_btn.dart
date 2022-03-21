import 'package:flutter/material.dart';
import 'package:jewerly_shopping_app/constants.dart';
import 'package:jewerly_shopping_app/screens/home_page.dart';

class GradientBtn extends StatelessWidget {
  const GradientBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HomePage();
        }));
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      //to retain ripple effects
      child: Ink(
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [kPurpleColor, kIconColor]),
            borderRadius: BorderRadius.circular(30)),
        child: Container(
          width: 300,
          height: 60,
          alignment: Alignment.center,
          child: const Text(
            'S’inscrire',
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
