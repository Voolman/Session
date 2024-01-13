import 'dart:io';
import 'package:flutter/material.dart';

import 'OnBoarding2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:133),
            child: SizedBox(
              width: double.infinity,
              height: 316,
              child: Image.network("https://avatars.mds.yandex.net/get-images-cbir/4509884/ydtyHH0lWLvCkCHkFywKMQ2718/ocr", fit: BoxFit.fill)
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 68, left: 52, right: 51),
            child: Text(
                "Quick Delivery At Your Doorstep",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 96, 250),
                  fontSize: 24,
                  fontFamily: "Roboto",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700
              )
            )
          ),
          const Padding(
              padding: EdgeInsets.only(top:10, left: 55, right: 54),
              child: Text(
                  "Enjoy quick pick-up and delivery to your destination",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 155, left: 24, right: 24),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: Expanded(
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 5, 96, 250)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnBoarding2()));
                            },
                            child: const Text(
                              "Skip",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 5, 96, 250),
                                  fontSize: 14,
                                  fontFamily: "Roboto",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700
                              ),
                            )
                        ),
                      ),
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: Expanded(
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 5, 96, 250)),
                              backgroundColor: Color.fromARGB(255, 5, 96, 250),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnBoarding2()));
                              },
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: "Roboto",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700
                              ),
                            )
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}