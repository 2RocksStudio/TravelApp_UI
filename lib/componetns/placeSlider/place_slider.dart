import 'package:flutter/material.dart';
import 'package:flutter_application_1/componetns/placeCard/place_card.dart';
import 'package:flutter_application_1/constants/theme_colors.dart';
import 'package:flutter_application_1/models/Place.dart';

class PlaceSlider extends StatefulWidget {
  const PlaceSlider({
    Key key,
  }) : super(key: key);

  @override
  _PlaceSliderState createState() => _PlaceSliderState();
}

class _PlaceSliderState extends State<PlaceSlider> {
  int currentSlider = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 260,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
                controller:
                    PageController(viewportFraction: 0.85, initialPage: 0),
                itemCount: places.length,
                itemBuilder: (context, index) =>
                    PlaceCard(place: places[index])),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  places.length, (index) => buildDotNav(index: index)),
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDotNav({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentSlider == index ? 24 : 6,
      decoration: BoxDecoration(
          color: currentSlider == index
              ? ThemeColors.PrimaryColor
              : ThemeColors.PrimaryColor.withAlpha(70),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
