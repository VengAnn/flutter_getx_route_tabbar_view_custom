import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("In Page 5"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
