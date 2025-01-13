import 'package:flutter/material.dart';

class Medicines extends StatefulWidget {
  const Medicines({super.key});

  @override
  State<Medicines> createState() => _MedicinesState();
}

class _MedicinesState extends State<Medicines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.teal[900],
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
          onPressed: () => {},
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
            Container(
              height: 10,
              color: Colors.teal[900],
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
}