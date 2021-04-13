import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme_colors.dart';
import 'package:flutter_application_1/models/Place.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_application_1/screens/details/details_screen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlaceCard extends StatelessWidget {
  final Place place;
  final String type;
  const PlaceCard({Key key, @required this.place, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (type == 'small')
      return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      DetailsScreen(place: place, from: 'small_card')));
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Stack(
            children: [
              Hero(
                  tag: "small_card_" + place.id.toString(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      place.image,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  )),
              Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: ThemeColors.CardInfoBG.withOpacity(0.6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: AutoSizeText(
                                  place.name,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                  minFontSize: 12,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          RatingBar.builder(
                            initialRating: place.rating,
                            ignoreGestures: true,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemSize: 15,
                            onRatingUpdate: (rating) {},
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 5,
                      right: 5,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          color: Colors.red,
                          icon: Icon(
                            Icons.favorite,
                            size: 16,
                          ),
                          onPressed: () {},
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      );
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailsScreen(place: place, from: 'normal_card')));
      },
      child: Container(
        margin: EdgeInsets.only(right: 30),
        child: Stack(
          children: [
            Hero(
              tag: "normal_card_" + place.id.toString(),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(place.image), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: 90,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: ThemeColors.CardInfoBG.withOpacity(0.6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: AutoSizeText(
                            place.name,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                            minFontSize: 16,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RatingBar.builder(
                      initialRating: place.rating,
                      ignoreGestures: true,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemSize: 20,
                      onRatingUpdate: (rating) {},
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 5,
                right: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    color: Colors.red,
                    icon: Icon(Icons.favorite),
                    onPressed: () {},
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
