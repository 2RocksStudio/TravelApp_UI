import 'package:flutter/material.dart';

class Place {
  final int id;
  final String name;
  final String description;
  final String location;
  final String image;
  final double rating;

  Place({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.location,
    @required this.image,
    @required this.rating,
  });
}

//*Dummy Data
List<Place> places = [
  Place(
      id: 1,
      name: 'Star Ferry',
      description:
          'Hong Kong\'s famous Star Ferry, with roots dating back to 1880, costs only a few Hong Kong Dollars to ride, making it one of the best deals in all of Hong Kong.',
      location: 'Victoria Harbour, Hong Kong',
      image:
          'https://www.planetware.com/photos-large/HK/hong-kong-star-ferry-sailing.jpg',
      rating: 4),
  Place(
      id: 2,
      name: 'Hong Kong Skyline',
      description:
          'One of the most impressive and recognizable skylines in the world. The dense collection of skyscrapers, both on the island of Hong Kong and in Kowloon, combined with the surrounding mountains and harbor set this city apart.',
      location: 'Kowloon, Hong Kong',
      image:
          'https://www.planetware.com/wpimages/2018/10/hong-kong-attractions-skyline-night-with-junk.jpg',
      rating: 5),
  Place(
      id: 3,
      name: 'Big Buddha (Tian Tan Buddha Statue)',
      description:
          'One of the most impressive and recognizable skylines in the world. The dense collection of skyscrapers, both on the island of Hong Kong and in Kowloon, combined with the surrounding mountains and harbor set this city apart.',
      location: 'Lantau Island\s Po Lin monastery, Hong Kong',
      image:
          'https://www.planetware.com/wpimages/2018/10/hong-kong-attractions-big-buddha-and-forest.jpg',
      rating: 4),
  Place(
      id: 4,
      name: 'Repulse Bay and the Beaches',
      description:
          'Not everyone thinks of beaches when they think of Hong Kong, but you don\'t have to go far to find some incredible soft-sand beach. The beach at Repulse Bay is the most popular in all of Hong Kong, with beautiful views and a great place for swimming, although it\'s very non touristy.',
      location: 'Repulse Bay, Hong Kong',
      image:
          'https://www.planetware.com/wpimages/2018/10/hong-kong-attractions-repulse-bay-beach-afternoon.jpg',
      rating: 3),
];
