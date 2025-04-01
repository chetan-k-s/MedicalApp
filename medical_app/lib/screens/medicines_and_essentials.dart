import 'package:flutter/material.dart';

class MedicinesAndEssentials extends StatefulWidget {
  const MedicinesAndEssentials({super.key});

  @override
  State<MedicinesAndEssentials> createState() => _MedicinesAndEssentialsState();

  static route() => MaterialPageRoute(builder: (context) => const MedicinesAndEssentials());
}

class _MedicinesAndEssentialsState extends State<MedicinesAndEssentials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: _titleBar(),
      ),
    );
  }

  Row _titleBar() {
    return Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.blue,
                  ),
                  border: InputBorder.none,
                  hintText: 'Search for medicines',
                  hintStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10,),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
            onPressed: () {},
          )
        ],
      );
  }
}
