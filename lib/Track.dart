import 'package:flutter/material.dart';
import 'Wallet.dart';
import 'Home.dart';
import 'Profile.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {

  List pages = [const Home(), const Wallet(), const Track(), const Profile()];
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        unselectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400
        ),
        selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400
        ),
        selectedItemColor: const Color.fromARGB(255, 5, 96, 250),
        unselectedItemColor: const Color.fromARGB(255, 167, 167, 167),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.house_outlined,
              ),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet_outlined,
              ),
              label: "Wallet"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_car_outlined,
              ),
              label: "Track"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile"
          ),
        ],
        onTap: (newIndex){
          setState(() {
            currentIndex = newIndex;
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => pages[newIndex]));
          });
        },
      ),
    );
  }
}