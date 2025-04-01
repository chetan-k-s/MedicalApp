import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Set a fixed height for the GridView
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1, // Adjust the aspect ratio for better spacing
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: <Widget>[
          _buildCategoryItem('Skincare', Icons.face),
          _buildCategoryItem('Baby care', Icons.child_friendly),
          _buildCategoryItem('Women care', Icons.woman_outlined),
          _buildCategoryItem('Men care', Icons.man_3_sharp),
          _buildCategoryItem('Pre-Workout', Icons.fitness_center),
          _buildCategoryItem('Diabetic care', Icons.medication_outlined),
          _buildCategoryItem('Cardiac care', Icons.monitor_heart),
          _buildCategoryItem('Oral care', Icons.local_hospital),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title, IconData icon) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Icon(icon, size: 40),
            const SizedBox(height: 4),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
