import 'package:flutter/material.dart';

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
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'My Health',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          fontFamily: 'Arial Nova'
        )
      ),
      actions: <Widget>[
        IconButton(
        icon: const Icon(Icons.search_outlined),
        color: Colors.black,
        onPressed: () => {},
        ),
        IconButton(
          icon: const Icon(Icons.live_help_outlined),
          color: Colors.black,
          onPressed: () => {},
        ),
        IconButton(
          icon: const Icon(Icons.person_outline),
          color: Colors.black,
          onPressed: () => {},
        )
      ],
    );
  }
}