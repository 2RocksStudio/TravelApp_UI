import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; //this is the way to get device screen size
    return Column(
      children: [
        Container(
          // height: size.height,
          child: Image.asset(
            'assets/images/bg_1.jpeg',
            height: size.height * 0.49,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: size.height * 0.51,
        )
      ],
    );
  }
}
