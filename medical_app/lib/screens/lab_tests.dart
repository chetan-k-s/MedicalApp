import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/screens/home_components/drop_down_section.dart';
import 'package:medical_app/screens/my_profile.dart';

class LabTests extends StatefulWidget {
  const LabTests({super.key});

  @override
  State<LabTests> createState() => _LabTestsState();
}

class _LabTestsState extends State<LabTests> {
  final List<Map<String, dynamic>> specialities = [
    {"name": "Women's\nhealth", "icon": Icons.local_hospital},
    {"name": "Obstetrics & Gynae", "icon": Icons.pregnant_woman},
    {"name": "Dermatology", "icon": Icons.face},
    {"name": "Psychiatry", "icon": Icons.psychology},
    {"name": "ENT", "icon": Icons.hearing},
    {"name": "Cardiology", "icon": Icons.favorite},
    {"name": "Urology", "icon": Icons.water_drop},
    {"name": "Paediatrics", "icon": Icons.child_care},
    {"name": "Gastroenterology", "icon": Icons.medical_services},
    {"name": "Neurology", "icon": Icons.face_2},
    {"name": "Diabetology", "icon": Icons.bloodtype},
    {"name": "Orthopaedics", "icon": Icons.accessibility},
  ];

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
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Wrap(
            spacing: 15,
            runSpacing: 10,
            children: <Widget>[
              GestureDetector(
                onTap: () => {
                  //Navigator.push(context, MedicinesAndEssentials.route())
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.phone,
                        size: 59,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '   Call\nTo book',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height:4),
                      Text(
                        'Call Now!!',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 20, 239),
                        ),
                      ),    
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {
                  //Navigator.of(context).push(NavBar.route(initialIndex: 1))
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.post_add_outlined,
                        size: 60,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Prescription\n    Upload',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height:4),
                      Text(
                        'Book Now',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 20, 239),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {
                  //Navigator.of(context).push(NavBar.route(initialIndex: 3))
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        size: 60,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'WhatsApp\n to Book',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height:4),
                      Text(
                        'Test now',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 20, 239),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {},
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.shieldHeart,
                        size: 60,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '  Health\nInsurance',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height:4),
                      Text(
                        '₹1/day',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 20, 239),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]
          ),
          const SizedBox(height: 10),
          const DropDownSection(),
          const SizedBox(height: 10),
          _advertisementBanner(),
          const SizedBox(height: 10),
          titlePadding("Lab Tests with MM Pharmacy"),
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                labTestCard("How to book with us"),
                labTestCard("About Sample Collection Process"),
                labTestCard("State of the Art Centres"),
              ],
            ),
          ),
          const SizedBox(height: 10),
          titlePadding("Doctor Created Health Checks\n(28)"),
          topSpecialitesGrid(),
          const SizedBox(height: 10),
          titlePadding("Recommendations(19)"),
        ],
      )
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

  SizedBox topSpecialitesGrid() {
    return SizedBox(
      width: double.infinity,
      child: GridView.builder(
        shrinkWrap: true, 
        physics: const NeverScrollableScrollPhysics(), 
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, 
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.9,
        ),
        itemCount: specialities.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min, 
            children: [
              Container(
                width: 50, // Square size
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),  
                ),
                child: Center(
                  child: Icon(
                    specialities[index]["icon"],
                    size: 30,
                    color: Colors.green[600],
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                specialities[index]["name"],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold), // Adjust font size
              ),
            ],
          );
        },
      ),
    );
  }

  Widget labTestCard(String title) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.black.withOpacity(0.7), Colors.transparent],
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      toolbarHeight: 110,
      backgroundColor: Colors.teal[900],
      title: _dropDown(),
      bottom: _searchBox(),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined),
          color: Colors.white,
          onPressed: () => {},
        ),
        IconButton(
          icon: const Badge(
            label: Text('3'),
            child: Icon(Icons.notifications_outlined),
          ),
          color: Colors.white,
          onPressed: () => {},
        ),
        IconButton(
          icon: const Icon(Icons.person_outline),
          color: Colors.white,
          onPressed: () {
            Navigator.push(context, MyProfile.route());
          },
        ),
      ],
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
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                  ),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              color: Colors.black,
              onPressed: () {},
          ),
          )
        ],
      ),
    ),
  );
}

  Padding _dropDown() {
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Your Location',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () => {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                ),
                child: const Row(
                  children: [
                    Text(
                      'Tiruvallur 600054',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 18,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
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