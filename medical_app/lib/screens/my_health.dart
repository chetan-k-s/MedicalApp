import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/screens/my_profile.dart';

class MyHealth extends StatefulWidget {
  const MyHealth({super.key});

  @override
  State<MyHealth> createState() => _MyHealthState();
}

class _MyHealthState extends State<MyHealth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  SingleChildScrollView _buildBody(){
    return SingleChildScrollView(
      child: Column(
        children: [
          titlePadding("Your Health at Your Fingertips"),
          const SizedBox(height: 10,),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                scrollableIcon(FontAwesomeIcons.prescription, "          My\n   Prescriptions"),
                scrollableIcon(Icons.report,"    Test\n  Reports"),
                scrollableIcon(Icons.medical_services, "     My\n  Doctors"),
                scrollableIcon(Icons.medical_services, "     My\n  Hospitals"),
                scrollableIcon(Icons.medical_services, "     My\n  Pharmacies"),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          _advertisementBanner(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
              "Track your health indicators to manage your wellness journey",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          healthCard(title: "HEART HEALTH", description: "Track heart wellness with key markers: lipids, and risk markers.", icon: Icons.favorite, color: Colors.red),
          healthCard(title: "BLOOD HEALTH", description: "Monitor blood health through counts and iron levels.", icon: Icons.water_drop, color:Colors.red),
          healthCard(title: "KIDNEY HEALTH", description: "Evaluate kidney function with tests for electrolytes and creatinine.", icon: Icons.medical_services, color: Colors.blue),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade700, Colors.purple.shade500],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // Needed for gradient to show
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.symmetric(vertical: 16), // Larger button
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward_ios, color: Colors.white, size: 24), // Dashboard Icon
                    SizedBox(width: 10),
                    Text(
                      "Go to my health dashboard",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16, // Bigger text
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Help & Support",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      )
    );
  }

Widget healthCard({
  required String title,
  required String description,
  required IconData icon,
  required Color color,
  //required String imagePath,
  //required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: ()=>{},
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.toUpperCase(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          // Image.asset(
          //   imagePath,
          //   width: 60,
          //   height: 60,
          // ),
        ],
      ),
    ),
  );
}

  Widget scrollableIcon(IconData icon, String title) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          FaIcon(
            icon,
            size: 40,
          ),
          const SizedBox(height: 5,),
          Text(title),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 100,
      title: const Text(
        'Guest',
        style: TextStyle(color: Colors.black, fontSize: 20),
      ), 
      actions: <Widget>[
        //const SizedBox(width: 7,),
        IconButton(
          icon: const Icon(Icons.help_sharp),
          color: Colors.black,
          onPressed: () => {},
        ),
        //const SizedBox(width: 7,),
        IconButton(
          icon: const Icon(Icons.person_outline),
          color: Colors.black,
          onPressed: () {
            Navigator.push(context, MyProfile.route());
          },
        ),
      ],
      bottom: _searchBox(),
    );
  }

  Padding titlePadding(String title) {
    return Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("View All", style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        );
  }

  PreferredSize _searchBox() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                    hintText: 'Search',
                    hintStyle: const TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _advertisementBanner() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.orange[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'ADVERTISEMENT',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}