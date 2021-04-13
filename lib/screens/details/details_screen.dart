import 'package:auto_size_text/auto_size_text.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/componetns/appbar/appbar.dart';
import 'package:flutter_application_1/componetns/button/custom_button.dart';
import 'package:flutter_application_1/constants/theme_colors.dart';
import 'package:flutter_application_1/models/Place.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsScreen extends StatelessWidget {
  final Place place;
  final String from;
  const DetailsScreen({Key key, @required this.place, @required this.from})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: buildAppBar(context,
          title: '',
          actions: [],
          leading: CustomButton(
            type: "icon",
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
            tapEvent: () {
              Navigator.pop(context);
            },
          )),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Stack(
          children: [
            buildImage(context),
            buildInfomations(context),
          ],
        ),
      ),
    );
  }

  Widget buildInfomations(context) {
    Size size = MediaQuery.of(context).size;
    return DelayedDisplay(
        delay: Duration(milliseconds: 150),
        fadingDuration: Duration(milliseconds: 300),
        slidingBeginOffset: const Offset(0, 1),
        child: Container(
            margin: EdgeInsets.only(top: size.height * .4),
            padding: EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: Colors.white),
            child: SafeArea(
                top: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 5.0),
                      child: AutoSizeText(
                        place.name,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    buildLocation(),
                    buildRating(),
                    buildPhotos(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 30),
                      child: Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 30),
                      child: AutoSizeText(
                        place.description,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildactionRow()
                  ],
                ))));
  }

  Widget buildactionRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: ThemeColors.PrimaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "\$988",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
              TextSpan(
                  text: "/",
                  style:
                      TextStyle(fontSize: 18, color: ThemeColors.PrimaryColor)),
              TextSpan(
                  text: "Package",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w800)),
            ])),
            CustomButton(
              type: 'icon',
              icon: Icon(
                Icons.play_arrow,
                color: ThemeColors.Icon,
              ),
              tapEvent: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget buildPhotos() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        height: 120,
        // color: Colors.red,
        child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            scrollDirection: Axis.horizontal,
            itemCount: place.photos.length,
            itemBuilder: (context, int index) {
              return Container(
                margin: EdgeInsets.only(left: index == 0 ? 0 : 8),
                width: 100,
                decoration: BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(place.photos[index]),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              );
            }),
      ),
    );
  }

  Widget buildRating() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 5),
      child: RatingBar.builder(
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
    );
  }

  Widget buildLocation() {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 5.0),
      child: Row(
        children: [
          Icon(
            Icons.location_pin,
            color: Colors.red,
          ),
          Expanded(
            child: AutoSizeText(
              place.location,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }

  Widget buildImage(context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .45,
      child: Hero(
        tag: from + "_" + place.id.toString(),
        child: Image.network(
          place.image,
          height: size.height * .45,
          width: size.width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
