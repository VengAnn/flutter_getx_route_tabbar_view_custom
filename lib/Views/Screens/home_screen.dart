import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/Views/Screens/page_4.dart';
import 'package:getx_1/Views/Screens/page_6.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: const Text("GetX Route and Custom Tab Bar"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.amber,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBar(
                      indicatorColor: Colors.amber,
                      indicator: BoxDecoration(
                        color: Colors.green[500],
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.blue,
                      tabs: const [
                        Tab(
                          text: "Page 1",
                        ),
                        Tab(text: "Page 2"),
                        Tab(text: "Page 3"),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    //on page1
                    Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      color: Colors.blue[200],
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(150, 100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {
                            Get.to(
                              () => const Page4(),
                              arguments: {
                                'id': Random().nextInt(100).toString(),
                              },
                            );
                          },
                          child: const Text("Go To Page 4"),
                        ),
                      ),
                    ),
                    //on tabview page2
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          fixedSize: const Size(150, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () =>
                            Get.toNamed('/go-page5'), // Corrected route name

                        child: const Text("Go To Page5 "),
                      ),
                    ),
                    //on tabview page3 show below
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          fixedSize: const Size(150, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () => Get.to(() => const Page6()),
                        //if use Get.off(()=> ) ; cannot back;
                        child: const Text("Go To Page 6"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
