import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'best_seller.dart';



class HelpCenterScreen extends StatelessWidget {



  void _onItemTapped(BuildContext context, int index) {
    if (index == 2) return; 
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BestSellerScreen()),
        );
        break;
    }
  }
  final List<Map<String, dynamic>> helpItems = [
    {'title': 'Customer service', 'icon': Icons.headset_mic},
    {'title': 'Website', 'icon': Icons.public},
    {'title': 'Whatsapp', 'icon': Icons.chat},
    {'title': 'Facebook', 'icon': Icons.facebook},
    {'title': 'Instagram', 'icon': Icons.camera_alt},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.orange.shade100,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {},
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text('Help Center', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              Text('How Can We Help You?', style: TextStyle(color: Colors.white70, fontSize: 14)),
            ],
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            tabs: [
              Tab(text: 'FAQ'),
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('Contact Us', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: ListView(
            children: helpItems.map((item) {
              return ExpansionTile(
                leading: Icon(item['icon'], color: Colors.orange, size: 30),
                title: Text(
                  item['title'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Details about ${item['title']}'),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(

      onTap: (index) => _onItemTapped(context, index),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.orange,
      selectedItemColor: Colors.deepOrangeAccent,
      unselectedItemColor: Colors.yellow.shade100,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: "Best Sellers"),
        BottomNavigationBarItem(icon: Icon(Icons.support), label: "Help"),
      ],
    ),
      ),
    );
  }
}
