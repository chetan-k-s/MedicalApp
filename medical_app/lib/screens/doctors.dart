import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Doctor extends StatefulWidget {
  const Doctor({super.key});

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  final List<Map<String, dynamic>> specialities = [
    {"name": "General Physician", "icon": Icons.local_hospital},
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

  SingleChildScrollView _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              GestureDetector(
                onTap: () => {},
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.stethoscope,
                        size: 30,
                        color: Colors.black,
                      ),
                      Text(
                        '  DIGITAL\n CONSULT',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
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
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.local_hospital_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                      Text(
                        'HOSPITAL\n    VISIT',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
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
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.black,
                      ),
                      Text(
                        'SURGICAL\n    CARE',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Top Doctors',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () => {},
                child: const Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          topSpecialitesGrid(),
          const SizedBox(
            height: 10,
          ),
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

  AppBar _buildAppBar() {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.teal[900],
      title: _dropDown(),
      bottom: _searchBox(),
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
          onPressed: () => {},
        ),
      ],
    );
  }

  PreferredSize _searchBox() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(30),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              suffixIcon: const Icon(
                Icons.search,
                size: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              hintText: 'Search',
              hintStyle: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }

  Padding _dropDown() {
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 0, bottom: 0),
      child: Row(
        children: [
          TextButton(
            onPressed: () => {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 0, left: 1),
              alignment: Alignment.centerLeft,
            ),
            child: const Row(
              children: [
                Text(
                  'Find Doctors near\nTiruvallur 600054',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
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
    );
  }
}
