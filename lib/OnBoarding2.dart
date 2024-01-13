import 'package:flutter/material.dart';
import 'OnBoarding3.dart';



class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

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
                  child: Image.network("https://avatars.mds.yandex.net/get-images-cbir/98723/luQDAmTQG7XRYGzhjj_ntQ4316/ocr", fit: BoxFit.fill)
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 68, left: 52, right: 51),
                child: Text(
                    "Flexible Payment",
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
                "Different modes of payment either before and after delivery without stress",
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
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnBoarding3()));
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
                                backgroundColor: const Color.fromARGB(255, 5, 96, 250),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                              ),
                              onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnBoarding3()));},
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

