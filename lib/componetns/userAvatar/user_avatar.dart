import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        width: 45,
        height: 45,
        child: GestureDetector(
          onTap: () {
            //do what you want here
          },
          child: CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            child: Text('U'),
          ),
        ),
      ),
    );
  }
}
