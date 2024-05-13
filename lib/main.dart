import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:glassmorphism/glassmorphism.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List<Map<String, dynamic>> foodsIcon = [
    {
      'icon': '🍔',
      'isSelected': false,
    },
    {
      'icon': '🍖',
      'isSelected': false,
    },
    {
      'icon': '🍟',
      'isSelected': false,
    },
    {
      'icon': '🍕',
      'isSelected': false,
    },
    {
      'icon': '🍗',
      'isSelected': false,
    },
    {
      'icon': '🥞',
      'isSelected': false,
    },
    {
      'icon': '🌭',
      'isSelected': false,
    },
    {
      'icon': '🥙',
      'isSelected': false,
    },
    {
      'icon': '🧆',
      'isSelected': false,
    },
    {
      'icon': '🌮',
      'isSelected': false,
    },
    {
      'icon': '🥗',
      'isSelected': false,
    },
    {
      'icon': '🥮',
      'isSelected': false,
    },
    {
      'icon': '🫖',
      'isSelected': false,
    },
    {
      'icon': '🥮',
      'isSelected': false,
    },
    {
      'icon': '☕️',
      'isSelected': false,
    },
    {
      'icon': '🍰',
      'isSelected': false,
    }
  ];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgImage.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: GlassmorphicContainer(
            width: screenWidth,
            height: screenHeight,
            borderRadius: 0,
            blur: 20,
            alignment: Alignment.bottomCenter,
            border: 0,
            linearGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 124, 124, 124).withOpacity(0.7),
                const Color.fromARGB(255, 124, 124, 124).withOpacity(0.7),
              ],
              stops: const [
                0.1,
                1,
              ],
            ),
            borderGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFFffffff).withOpacity(0.5),
                const Color((0xFFFFFFFF)).withOpacity(0.5),
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hi Zesan",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          width: 56,
                          height: 56,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/avatar.jpg"),
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "What do you want\nfor dinner",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var food in foodsIcon)
                            Row(
                              children: [
                                Chip(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 8,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26),
                                  ),
                                  label: Text(
                                    food['icon'],
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
