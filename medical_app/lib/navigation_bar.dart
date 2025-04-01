import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/screens/doctors.dart';
import 'package:medical_app/screens/home.dart';
import 'package:medical_app/screens/lab_tests.dart';
import 'package:medical_app/screens/medicines.dart';
import 'package:medical_app/screens/my_health.dart';

class NavBar extends StatefulWidget {
  final int initialIndex;
  const NavBar({super.key, this.initialIndex = 0});

  @override
  State<NavBar> createState() => _NavBarState();

  static route({int initialIndex = 0}) => MaterialPageRoute(
        builder: (context) => NavBar(initialIndex: initialIndex),
      );
}

class _NavBarState extends State<NavBar> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedIndex: currentIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.stethoscope),
            label: 'Doctors',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.pills),
            label: 'Medicines',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.houseMedical),
            label: 'Lab Tests',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.kitMedical),
            label: 'My Health',
          ),
        ],
      ),
      body: <Widget>[
        const Home(),
        const Doctor(),
        const Medicines(),
        const LabTests(),
        const MyHealth(),
      ][currentIndex],
    );
  }
}
