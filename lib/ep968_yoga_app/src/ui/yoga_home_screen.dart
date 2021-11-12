import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notebook_16th_story/ep968_yoga_app/src/bloc/yoga_tab_bloc.dart';
import 'package:ionicons/ionicons.dart';

import 'yoga_bottom_bar.dart';

class YogaHomeScreen extends StatefulWidget {
  const YogaHomeScreen({Key? key}) : super(key: key);

  @override
  _YogaHomeScreenState createState() => _YogaHomeScreenState();
}

class _YogaHomeScreenState extends State<YogaHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<YogaBottomTabBlock, int>(
          builder: (context, count) {
            return IndexedStack(
              index: count,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey[300]!),
                            ),
                            child: const Icon(Icons.notifications_outlined),
                          ),
                          const Text(
                            "Beyoga",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const CircleAvatar(
                            radius: 24,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        "Good Morning, Dream",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "We wish you have a good day",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: Container(
                          height: 54,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(32)),
                          child: Row(
                            children: const [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      icon: Icon(Icons.search), border: InputBorder.none, hintText: "Search Here..."),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                child: Icon(Icons.tune),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Recent Activity",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              height: 120,
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Stack(
                                      children: [
                                        Positioned(
                                            top: 0,
                                            bottom: 0,
                                            left: 0,
                                            right: 0,
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                                child: Container(
                                                  height: 2,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            )),
                                        Positioned(
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                          top: 0,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                                child: Container(
                                                  height: 6,
                                                  decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                ),
                                              )),
                                              Expanded(child: Container()),
                                              Expanded(child: Container()),
                                              Expanded(child: Container()),
                                              Expanded(
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 12),
                                                    child: Container(
                                                      height: 6,
                                                      decoration: BoxDecoration(
                                                        color: Colors.green,
                                                        borderRadius: BorderRadius.circular(4),
                                                      ),
                                                    ),
                                                  )),
                                              Expanded(child: Container()),
                                              Expanded(child: Placeholder()),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                                    Expanded(child: Placeholder()),
                                    Expanded(child: Placeholder()),
                                    Expanded(child: Placeholder()),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              height: 480,
                              child: Container(
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
                Container(
                  child: const Center(
                    child: Text("Hello 1"),
                  ),
                ),
                Container(
                  child: const Center(
                    child: Text("Hello 2"),
                  ),
                ),
                const Center(
                  child: Text("Hello 3"),
                ),
                const Center(
                  child: Text("Hello 4"),
                )
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: const YogaBottomBar(),
    );
  }
}
