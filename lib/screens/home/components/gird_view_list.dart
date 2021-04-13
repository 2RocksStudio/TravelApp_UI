import 'package:flutter/material.dart';
import 'package:flutter_application_1/componetns/placeCard/place_card.dart';
import 'package:flutter_application_1/models/Place.dart';

class GirdViewList extends StatelessWidget {
  const GirdViewList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(20),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.2,
        children: List.generate(places.length, (index) {
          return PlaceCard(
            type: 'small',
            place: places[index],
            // tapEvent: () {},
          );
        }),
      ),
    );
  }
}
