
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'help_center.dart';

class BestSellerScreen extends StatefulWidget {
  const BestSellerScreen({super.key});

  @override
  _BestSellerScreenState createState() => _BestSellerScreenState();
}

class _BestSellerScreenState extends State<BestSellerScreen> {
  
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    if (index == _selectedIndex) return; 
    setState(() {
      _selectedIndex = index;
    });

        switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 1:
        break; // Already on BestSellerScreen
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  HelpCenterScreen()),
        );
        break;
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        elevation: 0,
        title: const Text("Best Seller", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75,
          ),
          itemCount: bestSellers.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.asset(
                      bestSellers[index]['image']!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bestSellers[index]['name']!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          bestSellers[index]['price']!,
                          style: const TextStyle(
                              color: Colors.orange, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(

      onTap: _onItemTapped,
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
    );
  }
}

List<Map<String, String>> bestSellers = [
  {
    'name': 'Sunny Bruschetta',
    'image': 'assets/images/abc.png',
    'price': '\$15.00',
  },
  {
    'name': 'Gourmet Grilled Skewers',
    'image': 'assets/images/cheez-pizza.png',
    'price': '\$12.00',
  },
  {
    'name': 'Barbecue Tacos',
    'image': 'assets/images/pasta.png',
    'price': '\$15.00',
  },
  {
    'name': 'Broccoli Lasagna',
    'image': 'assets/images/BBQ.png',
    'price': '\$12.00',
  },
  {
    'name': 'Strawberry Cheesecake',
    'image': 'assets/images/cake.png',
    'price': '\$12.00',
  },
];
