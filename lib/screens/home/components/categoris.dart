import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme_colors.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> placesCategoris = [
      "Popular",
      "Featured",
      "Most Visited",
      "Most Viewed",
      "Latest",
      "All"
    ];

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: placesCategoris.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    this.selectedIndex = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: selectedIndex == index
                              ? ThemeColors.PrimaryColor
                              : Colors.black.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Center(
                    child: Text(
                      placesCategoris[index],
                      style: TextStyle(
                          fontSize: 16,
                          color: selectedIndex == index
                              ? ThemeColors.PrimaryColor
                              : ThemeColors.TextColor.withOpacity(.6),
                          fontWeight: selectedIndex == index
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
