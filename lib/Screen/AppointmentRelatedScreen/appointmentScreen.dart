import 'package:flutter/material.dart';
import '../../const/Palette.dart'; // Make sure the Palette import is correct

class AppointmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultations'),
        backgroundColor: Palette.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Month and Date Section
              Text(
                'MARCH 2024',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              // Available Doctors Section
              Text(
                'Available Doctors',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              // Doctor List
              _buildDoctorCard(
                doctorName: 'Dr. Neha Sharma',
                specialty: 'Consultant - Physiotherapy',
                rating: '4.9 (37 Reviews)',
                availableSlots: [
                  '09:00',
                  '09:30',
                  '10:00',
                  '10:30',
                  '11:00',
                  '11:30',
                  '12:00',
                  '13:00',
                  '14:00',
                  '14:30',
                  '15:00',
                  '16:00',
                  '16:30',
                  '17:00'
                ],
              ),
              _buildDoctorCard(
                doctorName: 'Dr. Ashutosh Singh',
                specialty: 'Consultant - Physiotherapy',
                rating: '4.9 (37 Reviews)',
                availableSlots: [
                  '09:00',
                  '09:30',
                  '10:00',
                  '10:30',
                  '11:00',
                  '11:30',
                  '12:00',
                  '13:00',
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Palette.greenAccent,
        selectedItemColor: Palette.white,
        unselectedItemColor: Palette.lightGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Doctors'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Appointment'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
        onTap: (index) {
          // Handle navigation when tapping bottom navigation items
          switch (index) {
            case 0:
              // Navigate to Home
              Navigator.pushNamed(context, 'Home Screen');
              break;
            case 1:
              // Navigate to Doctors
              break;
            case 2:
              // Navigate to Appointments
              Navigator.pushNamed(context, 'Appointment Page');
              break;
            case 3:
              // Navigate to Profile
              break;
          }
        },
      ),
    );
  }

  // Method to build a doctor card
  Widget _buildDoctorCard({
    required String doctorName,
    required String specialty,
    required String rating,
    required List<String> availableSlots,
  }) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/images/NoImage.png'), // Placeholder image
                  radius: 30,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        specialty,
                        style: TextStyle(fontSize: 14),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                          SizedBox(width: 2),
                          Text(rating,
                              style: TextStyle(
                                  color: Palette.greyNew, fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text('Available Slots:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Wrap(
              spacing: 10,
              children: availableSlots.map((slot) {
                return Chip(
                  label: Text(slot),
                  backgroundColor: Palette.greenAccent.withOpacity(0.2),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
