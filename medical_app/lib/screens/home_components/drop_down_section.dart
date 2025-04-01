import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_app/screens/prescription.dart';

class DropDownSection extends StatefulWidget {
  const DropDownSection({
    super.key,
  });

  @override
  State<DropDownSection> createState() => _DropDownSectionState();
}

class _DropDownSectionState extends State<DropDownSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(context, Prescription.route())
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
              Column(
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.check,
                            size: 40,
                          ),
                          SizedBox(height: 4),
                          Text(
                            '    Check\n Symptoms',
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
            ],
          ),
          if(_isExpanded)
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.pills,
                            size: 40,
                          ),
                          SizedBox(height: 4),
                          Text(
                            '      My\nMedicines',
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
                            FontAwesomeIcons.heartPulse,
                            size: 40,
                          ),
                          SizedBox(height: 4),
                          Text(
                            ' Manage\nDiabetics',
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
                            FontAwesomeIcons.temperatureThreeQuarters,
                            size: 40,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Diabetics\n reversal',
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
                          Icon(
                            Icons.more_horiz_rounded,
                            size: 40,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'View all',
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
            ],
          ),
          GestureDetector(
            onTap: () => {
              setState(() {
                _isExpanded = !_isExpanded;
              }),
            }, 
            child: Icon(
              _isExpanded ? Icons.keyboard_arrow_up :
                Icons.keyboard_arrow_down,
                color: Colors.grey,
                size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
