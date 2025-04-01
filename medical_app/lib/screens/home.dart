import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/screens/medicines_and_essentials.dart';
import 'package:medical_app/navigation_bar.dart';
import 'package:medical_app/screens/home_components/drop_down_section.dart';
import 'package:medical_app/screens/home_components/popular_categories.dart';
import 'package:medical_app/screens/my_profile.dart';
//import 'package:medical_app/screens/medicines.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

  static route() => MaterialPageRoute(builder: (context) => const Home());
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
      body: _buildBody(),
    );
  }

  SingleChildScrollView _buildBody() {
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
                  Navigator.push(context, MedicinesAndEssentials.route())
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
                        FontAwesomeIcons.syringe,
                        size: 60,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '  Medicines\n& essentials',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height:4),
                      Text(
                        '20% off',
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
                  Navigator.of(context).push(NavBar.route(initialIndex: 1))
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
                        FontAwesomeIcons.stethoscope,
                        size: 60,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Doctor\nBooking',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height:4),
                      Text(
                        'PRE BOOK',
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
                  Navigator.of(context).push(NavBar.route(initialIndex: 3))
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
                        FontAwesomeIcons.microscope,
                        size: 60,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '       Lab\nTest & Scan',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height:4),
                      Text(
                        '25% off',
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
          const SizedBox(height: 25),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Doctor-on-call @ ₹499 and less',
              style:TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () => {
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.post_add,
                            size: 40,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Prescription\n     Order',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.hospital,
                            size: 40,
                          ),
                          SizedBox(height: 4),
                          Text(
                            '  Visit \nHospital',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.phone,
                            size: 40,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Doctor\nOn Call',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'FREE',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 9, 20, 239),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () => {
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.post_add,
                            size: 40,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Prescription\n     Order',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.hospital,
                            size: 40,
                          ),
                          SizedBox(height: 4),
                          Text(
                            '  Visit \nHospital',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.phone,
                            size: 40,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Doctor\nOn Call',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'FREE',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 9, 20, 239),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Popular Categories',
              style:TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height:20),
          const PopularCategories(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.teal[900],
      elevation: 0,
      toolbarHeight: 100,
      leading: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
      title: dropDown(), 
      actions: <Widget>[
        IconButton(
          icon: const Badge(
            label: Text('3'),
            child: Icon(Icons.notifications_outlined),
          ),
          color: Colors.white,
          onPressed: () => {},
        ),
        //const SizedBox(width: 7,),
        IconButton(
          icon: const Icon(Icons.wallet_outlined),
          color: Colors.white,
          onPressed: () => {},
        ),
        //const SizedBox(width: 7,),
        IconButton(
          icon: const Icon(Icons.person_outline),
          color: Colors.white,
          onPressed: () {
            Navigator.push(context, MyProfile.route());
          },
        )
      ],
      bottom: _searchBox(),
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
                color: Colors.green[50],
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
              color: Colors.green[50],
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

  Widget dropDown(){
    return Row(
      children: [
        TextButton(
          onPressed: () => {},
          child: const Row(
            children: [
              Text(
                'Hi Guest',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 4,),
              Icon(
                Icons.keyboard_arrow_down,
                size: 18,
                color: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 150,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo[900],
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context);
              FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),
    );
  }
}

