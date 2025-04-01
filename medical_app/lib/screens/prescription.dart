import 'package:flutter/material.dart';

class Prescription extends StatefulWidget {
  const Prescription({super.key});

  @override
  State<Prescription> createState() => _PrescriptionState();

  static route() =>
      MaterialPageRoute(builder: (context) => const Prescription());
}

class _PrescriptionState extends State<Prescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Prescription Information Box
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.teal[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Make sure your prescription contains the following elements as shown:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  _buildPrescriptionItem("Doctor’s details", 1),
                  _buildPrescriptionItem("Date of prescription", 2),
                  _buildPrescriptionItem("Patient’s details", 3),
                  _buildPrescriptionItem("Medicine details", 4),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Upload Process Steps
            const Text(
              "Upload your prescription, and we’ll do the rest!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep("Our pharmacists will verify and prepare your order.", 1),
            _buildStep("We’ll apply the best discounts and coupons.", 2),
            _buildStep("You can pay online or on delivery.", 3),
            const SizedBox(height: 20),
          ],
        ),
      ),

      // **Fixed Bottom Button**
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => _buildDraggableBottomSheet(),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              "Upload Prescription To Order",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

   Widget _buildPrescriptionItem(String text, int number) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.teal[700],
            child: Text(
              number.toString(),
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildStep(String text, int number) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.teal[700],
                child: Text(
                  number.toString(),
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              if (number != 3) Container(width: 2, height: 20, color: Colors.teal[700]),
            ],
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDraggableBottomSheet() {
    return DraggableScrollableSheet(
      initialChildSize: 1, // Initial height (30% of screen)
      minChildSize: 1, // Minimum height (20% of screen)
      maxChildSize: 1, // Maximum height (80% of screen)
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16), // Rounded top corners
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Select an option to upload prescription',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'OpenSans',
                      ),
                    )),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 10,
                  right: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 5, bottom: 0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Additional Instructions:',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ),
                      _bulletPoints("File size should be less than 10MB"),
                      _bulletPoints("Can be in PDF/JPG/JPEG/PNG formats"),
                      _bulletPoints("Prescription should be less than 2 years old"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              Wrap(
                spacing: 0,
                runSpacing: 10,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                        color: Colors.grey
                      ),
                      borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.camera,
                            size: 50,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Capture via Camera',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                        color: Colors.grey
                      ),
                      borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.photo,
                            size: 50,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Upload from Gallery',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
              )
            ]
          ),
        );  
      },
    );
  }

  Padding _bulletPoints(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 1, top: 1),
      child: Row(children: [
        const Text("• "),
        Expanded(child: Text(text))
      ]),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Upload Prescription to Order',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ));
  }
}
