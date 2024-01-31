import 'package:flutter/material.dart';
import 'Wallet.dart';
import 'Track.dart';
import 'Home.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  List pages = [const Home(), const Wallet(), const Track(), const Profile()];
  int currentIndex = 3;

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 71, left: 24, right: 24),
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    "Hello Ken",
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 58, 58),
                        fontSize: 16,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  subtitle: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Current balance: ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 58, 58, 58),
                              fontSize: 12,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400
                          )
                        ),
                        TextSpan(
                          text: "N10,712:00",
                          style: TextStyle(
                              color: Color.fromARGB(255, 5, 96, 250),
                              fontSize: 12,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500
                          )
                        )
                      ]
                    )
                  ),
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 207, 207, 207)
                    ),
                    child: const Icon(
                        Icons.person_outline_sharp,
                        size: 32,
                        color: Color.fromARGB(255, 58, 58, 58)
                    ),
                  )
                ),
                const ListTile(
                    contentPadding: EdgeInsets.only(top: 13, left: 12),
                    title: Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Color.fromARGB(255, 58, 58, 58),
                          fontSize: 16,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    subtitle: Text(
                      "Name, phone no, address, email ...",
                      style: TextStyle(
                          color: Color.fromARGB(255, 167, 167, 167),
                          fontSize: 12,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    leading: Icon(
                        Icons.person_outline_sharp,
                        color: Color.fromARGB(255, 58, 58, 58)
                    ),
                  trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromARGB(255, 58, 58, 58),
                      size: 15,
                  ),
                ),
                const ListTile(
                  contentPadding: EdgeInsets.only(top: 13, left: 12),
                  title: Text(
                    "Statements & Reports",
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 58, 58),
                        fontSize: 16,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  subtitle: Text(
                    "Download transaction details, orders, deliveries",
                    style: TextStyle(
                        color: Color.fromARGB(255, 167, 167, 167),
                        fontSize: 12,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  leading: Icon(
                      Icons.insert_drive_file_outlined,
                      color: Color.fromARGB(255, 58, 58, 58)
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color.fromARGB(255, 58, 58, 58),
                    size: 15,
                  ),
                ),
                const ListTile(
                  contentPadding: EdgeInsets.only(top: 13, left: 12),
                  title: Text(
                    "Notification Settings",
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 58, 58),
                        fontSize: 16,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  subtitle: Text(
                    "mute, unmute, set location & tracking setting",
                    style: TextStyle(
                        color: Color.fromARGB(255, 167, 167, 167),
                        fontSize: 12,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  leading: Icon(
                      Icons.insert_drive_file_outlined,
                      color: Color.fromARGB(255, 58, 58, 58)
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color.fromARGB(255, 58, 58, 58),
                    size: 15,
                  ),
                ),
                const ListTile(
                  contentPadding: EdgeInsets.only(top: 13, left: 12),
                  title: Text(
                    "Card & Bank account settings",
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 58, 58),
                        fontSize: 16,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  subtitle: Text(
                    "change cards, delete card details",
                    style: TextStyle(
                        color: Color.fromARGB(255, 167, 167, 167),
                        fontSize: 12,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  leading: Icon(
                      Icons.wallet_outlined,
                      color: Color.fromARGB(255, 58, 58, 58)
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color.fromARGB(255, 58, 58, 58),
                    size: 15,
                  ),
                ),
                const ListTile(
                  contentPadding: EdgeInsets.only(top: 13, left: 12),
                  title: Text(
                    "Referrals",
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 58, 58),
                        fontSize: 16,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  subtitle: Text(
                    "check no of friends and earn",
                    style: TextStyle(
                        color: Color.fromARGB(255, 167, 167, 167),
                        fontSize: 12,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  leading: Icon(
                      Icons.people_outline,
                      color: Color.fromARGB(255, 58, 58, 58)
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color.fromARGB(255, 58, 58, 58),
                    size: 15,
                  ),
                ),
                const ListTile(
                  contentPadding: EdgeInsets.only(top: 13, left: 12),
                  title: Text(
                    "About Us",
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 58, 58),
                        fontSize: 16,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  subtitle: Text(
                    "know more about us, terms and conditions",
                    style: TextStyle(
                        color: Color.fromARGB(255, 167, 167, 167),
                        fontSize: 12,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  leading: Icon(
                      Icons.map_outlined,
                      color: Color.fromARGB(255, 58, 58, 58)
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color.fromARGB(255, 58, 58, 58),
                    size: 15,
                  ),
                ),
                const ListTile(
                  shape: RoundedRectangleBorder(),
                  contentPadding: EdgeInsets.only(top: 13, left: 12),
                  title: Text(
                    "Log Out",
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 58, 58),
                        fontSize: 16,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  leading: Icon(
                      Icons.output,
                      color: Color.fromARGB(255, 237, 58, 58)
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color.fromARGB(255, 58, 58, 58),
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}