import 'package:flutter/material.dart';
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
          ],
        ),
      ),
    );
  }
}
