import 'package:flutter/material.dart';
import 'package:session/SignUp.dart';

import 'Home.dart';


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

  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 19, top: 78, bottom: 8),
                  child: Text(
                    "Welcome Back",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 58, 58),
                        fontSize: 24,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 19),
                  child: Text(
                    "Fill in your email and password to continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 167, 167, 167),
                        fontSize: 14,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 19, right: 19, top: 33),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Email Address",
                          style: TextStyle(
                              color: Color.fromARGB(255, 167, 167, 167),
                              fontSize: 14,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 167, 167, 167)
                                ),
                              ),
                        label: Text(
                          "***********@mail.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 207, 207, 207),
                              fontSize: 14,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 24, bottom: 8),
                        child: Text(
                          "Password",
                          style: TextStyle(
                              color: Color.fromARGB(255, 167, 167, 167),
                              fontSize: 14,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 167, 167, 167)
                            ),
                          ),
                          label: Text(
                            "**********",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 207, 207, 207),
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500
                            ),
                          )
                      ),
                    ),
                  ),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 6, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        side: const BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 167, 167, 167)),
                          value: isChecked,
                          onChanged: (value){
                            setState(() {
                              isChecked = value!;
                            });
                          }
                      ),
                      const Text(
                        "Remember password",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 167),
                            fontSize: 12,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: const Text(
                            "Forgot Password?",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Color.fromARGB(255, 5, 96, 250),
                                fontSize: 12,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500
                            ),
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 373, left: 19, right: 19),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 46,
                      child: Expanded(
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 5, 96, 250)),
                                backgroundColor: const Color.fromARGB(255, 5, 96, 250),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                              ),
                            onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));
                                },
                            child: const Text(
                              "Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: "Roboto",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700
                              ),
                            )
                          )
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Not have account?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 167, 167, 167),
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUp()));
                              },
                              child: const Text(
                                  "Sign Up",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 5, 96, 250),
                                    fontSize: 14,
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500
                                ),
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}