import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Back "),
            ),
          ],
        ),
      ),
    );
  }
}
