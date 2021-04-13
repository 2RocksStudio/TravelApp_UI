import 'package:flutter/material.dart';

class Place {
  final int id;
  final String name;
  final String description;
  final String location;
  final String image;
  final List<String> photos;
  final double rating;

  Place({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.location,
    @required this.image,
    @required this.photos,
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
      photos: [
        "https://i.picsum.photos/id/191/800/800.jpg?hmac=CwFgI0Xl060qvKgKrMxLSLgDQBdKqT-W5yiTPpbwjco",
        "https://i.picsum.photos/id/559/800/800.jpg?hmac=QagIAMKkgNZr8l3NpyiiB3edxYWVPivCE5fOV3vsNyY",
        "https://i.picsum.photos/id/729/800/800.jpg?hmac=ecYGHkN87laQVOlHUYRrJaDBDu41aLnW06V8RW_v6KA",
        "https://i.picsum.photos/id/724/800/800.jpg?hmac=1-eJTxoXhWfl0P2-SEAq2SkmV7vILJU1YD_dwV5wphk",
        "https://i.picsum.photos/id/535/800/800.jpg?hmac=s9bN4ZI7nrbML3ogbmq4fEYjon1YJLOIGDn42WnT4B8"
      ],
      rating: 4),
  Place(
      id: 2,
      name: 'Hong Kong Skyline',
      description:
          'One of the most impressive and recognizable skylines in the world. The dense collection of skyscrapers, both on the island of Hong Kong and in Kowloon, combined with the surrounding mountains and harbor set this city apart.',
      location: 'Kowloon, Hong Kong',
      image:
          'https://www.planetware.com/wpimages/2018/10/hong-kong-attractions-skyline-night-with-junk.jpg',
      photos: [
        "https://i.picsum.photos/id/191/800/800.jpg?hmac=CwFgI0Xl060qvKgKrMxLSLgDQBdKqT-W5yiTPpbwjco",
        "https://i.picsum.photos/id/559/800/800.jpg?hmac=QagIAMKkgNZr8l3NpyiiB3edxYWVPivCE5fOV3vsNyY",
        "https://i.picsum.photos/id/729/800/800.jpg?hmac=ecYGHkN87laQVOlHUYRrJaDBDu41aLnW06V8RW_v6KA",
        "https://i.picsum.photos/id/724/800/800.jpg?hmac=1-eJTxoXhWfl0P2-SEAq2SkmV7vILJU1YD_dwV5wphk",
        "https://i.picsum.photos/id/535/800/800.jpg?hmac=s9bN4ZI7nrbML3ogbmq4fEYjon1YJLOIGDn42WnT4B8"
      ],
      rating: 5),
  Place(
      id: 3,
      name: 'Big Buddha (Tian Tan Buddha Statue)',
      description:
          'One of the most impressive and recognizable skylines in the world. The dense collection of skyscrapers, both on the island of Hong Kong and in Kowloon, combined with the surrounding mountains and harbor set this city apart.',
      location: 'Lantau Island\s Po Lin monastery, Hong Kong',
      image:
          'https://www.planetware.com/wpimages/2018/10/hong-kong-attractions-big-buddha-and-forest.jpg',
      photos: [
        "https://i.picsum.photos/id/191/800/800.jpg?hmac=CwFgI0Xl060qvKgKrMxLSLgDQBdKqT-W5yiTPpbwjco",
        "https://i.picsum.photos/id/559/800/800.jpg?hmac=QagIAMKkgNZr8l3NpyiiB3edxYWVPivCE5fOV3vsNyY",
        "https://i.picsum.photos/id/729/800/800.jpg?hmac=ecYGHkN87laQVOlHUYRrJaDBDu41aLnW06V8RW_v6KA",
        "https://i.picsum.photos/id/724/800/800.jpg?hmac=1-eJTxoXhWfl0P2-SEAq2SkmV7vILJU1YD_dwV5wphk",
        "https://i.picsum.photos/id/535/800/800.jpg?hmac=s9bN4ZI7nrbML3ogbmq4fEYjon1YJLOIGDn42WnT4B8"
      ],
      rating: 4),
  Place(
      id: 4,
      name: 'Repulse Bay and the Beaches',
      description:
          'Not everyone thinks of beaches when they think of Hong Kong, but you don\'t have to go far to find some incredible soft-sand beach. The beach at Repulse Bay is the most popular in all of Hong Kong, with beautiful views and a great place for swimming, although it\'s very non touristy.',
      location: 'Repulse Bay, Hong Kong',
      photos: [
        "https://i.picsum.photos/id/191/800/800.jpg?hmac=CwFgI0Xl060qvKgKrMxLSLgDQBdKqT-W5yiTPpbwjco",
        "https://i.picsum.photos/id/559/800/800.jpg?hmac=QagIAMKkgNZr8l3NpyiiB3edxYWVPivCE5fOV3vsNyY",
        "https://i.picsum.photos/id/729/800/800.jpg?hmac=ecYGHkN87laQVOlHUYRrJaDBDu41aLnW06V8RW_v6KA",
        "https://i.picsum.photos/id/724/800/800.jpg?hmac=1-eJTxoXhWfl0P2-SEAq2SkmV7vILJU1YD_dwV5wphk",
        "https://i.picsum.photos/id/535/800/800.jpg?hmac=s9bN4ZI7nrbML3ogbmq4fEYjon1YJLOIGDn42WnT4B8"
      ],
      image:
          'https://www.planetware.com/wpimages/2018/10/hong-kong-attractions-repulse-bay-beach-afternoon.jpg',
      rating: 3),
];
