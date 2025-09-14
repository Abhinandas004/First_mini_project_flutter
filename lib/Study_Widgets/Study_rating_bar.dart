import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingExample extends StatefulWidget {
  const RatingExample({super.key});

  @override
  State<RatingExample> createState() => _RatingExampleState();
}

class _RatingExampleState extends State<RatingExample> {
  double rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RatingBar.builder(
          initialRating: rating,
          minRating: 3,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (value) {
            setState(() {
              rating = value;
            });
            print("Rating: $value");
          },
        ),
      ),
    );
  }
}
