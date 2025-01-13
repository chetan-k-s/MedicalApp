import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount:4 ,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Column(
            children:[
              Icon(Icons.post_add, size: 40),
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
        Container(
          padding: const EdgeInsets.all(8),
          child: const Column(
            children:[
              Icon(Icons.post_add, size: 40),
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
        Container(
          padding: const EdgeInsets.all(8),
          child: const Column(
            children:[
              Icon(Icons.post_add, size: 40),
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
        Container(
          padding: const EdgeInsets.all(8),
          child: const Column(
            children:[
              Icon(Icons.post_add, size: 40),
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
        Container(
          padding: const EdgeInsets.all(8),
          child: const Column(
            children:[
              Icon(Icons.post_add, size: 40),
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
        Container(
          padding: const EdgeInsets.all(8),
          child: const Column(
            children:[
              Icon(Icons.post_add, size: 40),
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
      ]
    );
  }
}