import 'package:flutter/material.dart';

import '../../const/Palette.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      drawer: DrawerMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Section and Search Bar in Green Background
            Container(
              decoration: BoxDecoration(
                color: Palette.greenAccent,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
              ),
              padding: EdgeInsets.only(
                  left: 28.0, right: 28.0, bottom: 38.0, top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/NoImage.png'),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: TextStyle(
                                fontSize: 15,
                                color: Palette.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Priyaksh Garg',
                            style:
                                TextStyle(fontSize: 13, color: Palette.white),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.qr_code, size: 30, color: Palette.login),
                      SizedBox(width: 4),
                      Builder(
                        builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              Scaffold.of(context)
                                  .openDrawer(); // Open the Drawer
                            },
                            child: Icon(Icons.menu,
                                size: 40, color: Palette.white),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 30),

                  // Search Bar
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search, color: Palette.lightGrey),
                      hintText: 'Search',
                      hintStyle:
                          TextStyle(color: Palette.greyNew, fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Palette.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Categories Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    'Show All',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  categoryItem(
                    Icons.medical_services,
                    'Consultation',
                    () {
                      // Navigate to Laboratory Page
                    },
                  ),
                  categoryItem(
                    Icons.local_hospital,
                    'Hospital',
                    () {
                      // Navigate to Laboratory Page
                    },
                  ),
                  categoryItem(
                    Icons.home,
                    'Home Care',
                    () {
                      // Navigate to Laboratory Page
                    },
                  ),
                  categoryItem(
                    Icons.local_pharmacy,
                    'Pharmacy',
                    () {
                      // Navigate to Laboratory Page
                    },
                  ),
                  categoryItem(
                    Icons.directions_car,
                    'Ambulance',
                    () {
                      // Navigate to Laboratory Page
                    },
                  ),
                  categoryItem(
                    Icons.science,
                    'Laboratory',
                    () {
                      // Navigate to Laboratory Page
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                'Know more about your symptoms',
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 10),
            // Customer Care Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                  color: Palette.greenAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '24/7 Customer Care Support',
                      style: TextStyle(
                          color: Palette.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                    Icon(Icons.arrow_forward, color: Palette.white),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),

            // Book Appointment Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                'Book an Appointment',
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Palette.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/NoImage.png'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Neha Sharma',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.0),
                        ),
                        Text(
                          'Consultant - Physiotherapy',
                          style: TextStyle(fontSize: 10.0),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 16),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '4.9 (57 Reviews)',
                              style: TextStyle(
                                  color: Palette.greyNew, fontSize: 9.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
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

  // Widget for Category Item
  Widget categoryItem(IconData iconData, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap, // Use the onTap passed as a parameter
      child: Container(
        margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 16.0),
        decoration: BoxDecoration(
          color: Palette.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, color: Palette.greenAccent, size: 30.0),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(fontSize: 11, color: Palette.greyNew),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.greenAccent,
      width: MediaQuery.of(context).size.width,
      child: Drawer(
        backgroundColor: Palette.greenAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Drawer header
            Container(
              color: Palette.white, // Match the header background color
              padding: EdgeInsets.only(left: 20, right: 10, bottom: 5, top: 25),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Palette.greenAccent,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios_sharp,
                            size: 20, color: Palette.white),
                        onPressed: () {
                          Navigator.pop(context); // Close the drawer
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                      width: (MediaQuery.of(context).size.width / 2) - 130),
                  Image.asset('assets/icons/appicon.png',
                      height: 40), // App icon
                  SizedBox(width: 5),
                  Text(
                    'HEALTHGRATE',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.notifications_active_outlined,
                      color: Palette.greenAccent), // Right icon
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // Drawer items
            Container(
              height: MediaQuery.of(context).size.height - 160,
              width: MediaQuery.of(context).size.width - 15,
              decoration: BoxDecoration(
                color: Palette.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _createDrawerItem(Icons.person, 'My Profile'),
                  _createDrawerItem(Icons.shopping_bag, 'My Orders'),
                  _createDrawerItem(
                      Icons.notifications, 'Health Notifications'),
                  _createDrawerItem(
                      Icons.receipt_long, 'My Consultations & Health records'),
                  _createDrawerItem(
                      Icons.group_add, 'Add more Patient - upto 5'),
                  _createDrawerItem(Icons.track_changes, 'Track your vitals'),
                  _createDrawerItem(Icons.alarm, 'Pill reminder'),
                  _createDrawerItem(Icons.card_giftcard, 'Rewards'),
                  _createDrawerItem(Icons.monetization_on, 'Refer & Earn'),
                  _createDrawerItem(Icons.support, '24x7 Support'),
                  _createDrawerItem(Icons.share, 'Social Media'),
                  _createDrawerItem(Icons.contact_phone, 'Contact Us'),
                  _createDrawerItem(Icons.info, 'About Us'),
                ],
              ),
            ),

            // Footer
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: Text(
                  'Terms & Conditions | Privacy Policy',
                  style: TextStyle(color: Palette.lightGrey, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create drawer items
  Widget _createDrawerItem(IconData icon, String text) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: Palette.greenAccent,
          ),
          title: Text(text,
              style: TextStyle(
                fontSize: 14,
                color: Palette.greyNew,
              )),
          onTap: () {
            // Handle navigation or action here
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 30),
          child: Divider(
            color: Palette.lightGrey, // Grey color for the divider
            thickness: 0.4, // Thickness of the line
            height: 0, // No extra space around the divider
          ),
        ),
      ],
    );
  }
}
