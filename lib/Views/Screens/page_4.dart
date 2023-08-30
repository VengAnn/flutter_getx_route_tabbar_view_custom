import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text("This is Page 4"),
            ),
            Text("Random Number is: ${Get.arguments['id']}"),
            //have ElevatedButton
            ElevatedButton(
              onPressed: () {
                Get.back(); //go back like Navigator.pop(context);
              },
              child: const Text("Back Home"),
            ),
            //
            RatingBar.builder(
              initialRating: 3.5,
              minRating: 0.5,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 30,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
          ],
        ),
      ),
    );
  }
}
