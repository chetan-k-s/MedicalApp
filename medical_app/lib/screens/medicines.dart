import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/screens/home_components/drop_down_section.dart';
import 'package:medical_app/screens/my_profile.dart';

class Medicines extends StatefulWidget {
  const Medicines({super.key});

  @override
  State<Medicines> createState() => _MedicinesState();

  static route() => MaterialPageRoute(builder: (context) => const Medicines());
}

class _MedicinesState extends State<Medicines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  SingleChildScrollView _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          _advertisementBanner(),
          const SizedBox(height: 10),
          Wrap(
            spacing: 15,
            runSpacing: 10,
            children: <Widget>[
              _buildCategoryTile(FontAwesomeIcons.snowflake, '  Winter\n Care', 'FOR YOU'),
              _buildCategoryTile(FontAwesomeIcons.stethoscope, 'Doctor\nBooking', 'PRE BOOK'),
              _buildCategoryTile(FontAwesomeIcons.microscope, '       Lab\nTest & Scan', '25% off'),
              _buildCategoryTile(FontAwesomeIcons.shieldHeart, '  Health\nInsurance', '₹1/day'),
            ],
          ),
          const SizedBox(height: 10),
          const DropDownSection(),
          const SizedBox(height: 10),
          _advertisementBanner(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exclusive Offers for You',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          _advertisementBanner(),
        ],
      ),
    );
  }

  GestureDetector _buildCategoryTile(IconData icon, String title, String subtitle) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            FaIcon(icon, size: 60),
            const SizedBox(height: 4),
            Text(
              title,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Colors.indigo,
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

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.indigo[900],
      elevation: 0,
      toolbarHeight: 110,
      title: _dropDown(),
      actions: <Widget>[
        IconButton(
          icon: const Badge(
            label: Text('3'),
            child: Icon(Icons.notifications_outlined),
          ),
          color: Colors.white,
          onPressed: () => {},
        ),
        IconButton(
          icon: const Icon(Icons.wallet_outlined),
          color: Colors.white,
          onPressed: () => {},
        ),
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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Column(
          children: [
            Row(
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
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Search',
                        hintStyle: const TextStyle(color: Colors.grey),
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
            Container(
              height: 10,
              color: Colors.indigo[900],
            ),
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
            'Delivering to',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () => {},
                style: TextButton.styleFrom(padding: EdgeInsets.zero, alignment: Alignment.centerLeft),
                child: const Row(
                  children: [
                    Text(
                      'Tiruvallur 600054',
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
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
}
