import 'package:flutter/material.dart';
import 'Holder.dart';



class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

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
                  child: Image.network("https://avatars.mds.yandex.net/get-images-cbir/2472796/YNr6asjQqaPgZf67KdbxAw4857/ocr", fit: BoxFit.fill)
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 68, left: 52, right: 51),
                child: Text(
                    "Real-time Tracking",
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
                "Track your packages/items from the comfort of your home till final destination",
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
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 5, 96, 250)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Holder()));
                          },
                          child: const Text(
                            "Next",
                            style: TextStyle(
                                color: Color.fromARGB(255, 5, 96, 250),
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700
                            ),
                          )
                      )
                    ],
                  ),


                ],
              ),
            )
          ],
        )
    );
  }
}