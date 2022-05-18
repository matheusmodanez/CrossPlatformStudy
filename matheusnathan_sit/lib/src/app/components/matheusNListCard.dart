import 'package:flutter/material.dart';

class StandardListCard extends StatelessWidget {
  final String? movieName;
  final String? rating;

  StandardListCard({this.movieName, this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue, width: 2),
      ),
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Text(
            movieName!,
            style: TextStyle(fontSize: 20),
          ),
         const Spacer(),
          Text(
            rating!,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
