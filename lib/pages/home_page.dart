import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.blue),
          onPressed: () {
            // Menu button action
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text(
                'Start Project',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Profile>',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                'Create>',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                'Edit Project>',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Project Image',
                  style: TextStyle(color: Colors.blue, fontSize: 24),
                ),
                SizedBox(height: 8),
                Text(
                  'You can upload image below, at least 1024x523px, it will be cropped to 17.9 ratio.',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(height: 16),
                Center(
                  child: Image.asset('lib/images/projectimage.png'),
                ),
                SizedBox(height: 16),
                Text(
                  'Title',
                  style: TextStyle(color: Colors.blue, fontSize: 24),
                ),
                SizedBox(height: 8),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'My first project',
                    hintStyle: TextStyle(color: Colors.white54),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Subtitle',
                  style: TextStyle(color: Colors.blue, fontSize: 24),
                ),
                SizedBox(height: 8),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Enter subtitle here',
                    hintStyle: TextStyle(color: Colors.white54),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('lib/images/twitter.png', width: 24, height: 24),
            label: 'Twitter',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/images/facebook.png', width: 24, height: 24),
            label: 'Facebook',
          ),
          BottomNavigationBarItem(
            icon:
                Image.asset('lib/images/instagram.jpg', width: 24, height: 24),
            label: 'Instagram',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
