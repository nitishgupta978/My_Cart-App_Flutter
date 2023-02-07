import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kMyAppBarHight,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Stack(children: const [
        Align(
          alignment: Alignment.centerLeft,
          child: BackButton(color: Colors.white),
        ),
        Center(
          child: Text(
            'My Cart',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
