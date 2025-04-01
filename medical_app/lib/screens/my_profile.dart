import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  static route() => MaterialPageRoute(builder: (context) => const MyProfile());

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.indigo[900],
      title: const Text('My Profile', style: TextStyle(color: Colors.white)),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.settings, color: Colors.white),
          onPressed: () {},
        )
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _profileHeader(),
          const SizedBox(height: 20),
          _profileOptions(context),
        ],
      ),
    );
  }

  Widget _profileHeader() {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.indigo[200],
          child: const Icon(FontAwesomeIcons.user, size: 50, color: Colors.white),
        ),
        const SizedBox(height: 10),
        const Text(
          'John Doe',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const Text(
          'johndoe@email.com',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _profileOptions(BuildContext context) {
    return Column(
      children: [
        _profileTile(Icons.shopping_bag_outlined, 'My Orders', showArrow: true, onTap: () {}),
        _profileTile(Icons.local_shipping_outlined, 'Track Order', showArrow: true, onTap: () {}),
        const Divider(),
        _profileTile(Icons.logout, 'Log Out', showArrow: false, onTap: () {
          Navigator.pop(context);
          FirebaseAuth.instance.signOut();
        }),
      ],
    );
  }

  Widget _profileTile(IconData icon, String title, {bool showArrow = true, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.indigo[900]),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      trailing: showArrow ? const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey) : null,
      onTap: onTap,
    );
  }
}
