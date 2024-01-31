import 'package:flutter/material.dart';

import 'Home.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SignUp> {
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
                      "Create an account",
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
                    "Complete the sign up process to get started",
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
                            "Full name",
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
                              "Ivanov Ivan",
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
                            "Phone Number",
                            style: TextStyle(
                                color: Color.fromARGB(255, 167, 167, 167),
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ]
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
                              "+7(999)999-99-99",
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
                        ]
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
                        ]
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
                    Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 24, bottom: 8),
                            child: Text(
                              "Confirm Password",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 167, 167, 167),
                                  fontSize: 14,
                                  fontFamily: "Roboto",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ]
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
                  ],
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
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: SizedBox(
                          width: 320,
                          height: 28,
                          child: RichText(
                            maxLines: 10,
                              softWrap: true,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "By ticking this box, you agree to our ",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 167, 167, 167),
                                        fontSize: 12,
                                        fontFamily: "Roboto",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Terms and conditions and private policy",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 235, 188, 46),
                                        fontSize: 12,
                                        fontFamily: "Roboto",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400
                                    ),
                                  )
                                ]
                              ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 85, left: 19, right: 19),
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
                                "Sign up",
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
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyHomePage()));
                              },
                              child: const Text(
                                "Sign In",
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