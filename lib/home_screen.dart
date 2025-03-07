import 'package:flutter/material.dart';
import 'package:food_app/best_seller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.orange),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Icon(Icons.shopping_cart, color: Colors.orange),
            const SizedBox(width: 10),
            const Icon(Icons.person, color: Colors.orange),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.orange),
                  ),
                  Text(
                    "Rise And Shine! It's Breakfast Time",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),

            // Categories
            SizedBox(
              height: 90,
              child: ListView(
                
                scrollDirection: Axis.horizontal,
                children: [
                  categoryItem("Pizza", Icons.local_pizza),
                  categoryItem("Snacks", Icons.fastfood),
                  categoryItem("Meal", Icons.restaurant),
                  categoryItem("Vegan", Icons.eco),
                  categoryItem("Dessert", Icons.cake),
                  categoryItem("Drinks", Icons.local_drink),
                ],
              ),
            ),

            // Best Seller Section
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Best Seller",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  BestSellerScreen()),
              );
            },
            child: const Text(
              "View All",
              style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),

            SizedBox(
              height: 150,
              child: ListView(
                
                scrollDirection: Axis.horizontal,
                children: [
                  bestSellerItem("assets/images/pizza.png", "\$103.0"),
                  bestSellerItem("assets/images/snacks.png", "\$50.0"),
                  bestSellerItem("assets/images/snacks.png", "\$12.99"),
                  bestSellerItem("assets/images/snacks.png", "\$6.20"),
                  bestSellerItem("assets/images/snacks.png", "\$6.20"),
                  bestSellerItem("assets/images/snacks.png", "\$6.20"),
                ],
              ),
            ),

            // Discount Banner
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Experience our\ndelicious new dish\n30% OFF",
                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Image.asset("assets/images/pizza.png", width: 200, height: 200, fit: BoxFit.cover),
                  ],
                ),
              ),
            ),

            // Recommended Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Recommend", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),

            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                    bestSellerItem("assets/images/pizza.png", "\$103.0"),
                  bestSellerItem("assets/images/snacks.png", "\$50.0"),
                  bestSellerItem("assets/images/snacks.png", "\$12.99"),
                  bestSellerItem("assets/images/snacks.png", "\$6.20"),
                  bestSellerItem("assets/images/snacks.png", "\$6.20"),
                  bestSellerItem("assets/images/snacks.png", "\$6.20"),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        
  backgroundColor: Colors.orange, 
  selectedItemColor: Colors.deepOrangeAccent, 
  unselectedItemColor: Colors.yellow.shade100, 
  // showUnselectedLabels: false, 
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
  ],
      ),
    );
  }

  // Category Widget
  Widget categoryItem(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange.shade100,
            radius: 30,
            child: Icon(icon, color: Colors.orange, size: 30),
          ),
          const SizedBox(height: 5),
          Text(title, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  // Best Seller Item Widget
  Widget bestSellerItem(String imagePath, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(imagePath, width: 100, height: 80, fit: BoxFit.cover),
          ),
          const SizedBox(height: 5),
          Text(price, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.orange)),
        ],
      ),
    );
  }

  // Recommended Item Widget
  Widget recommendedItem(String imagePath, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(imagePath, width: 140, height: 120, fit: BoxFit.cover),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.orange, size: 16),
              const Text("5.0", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              const Spacer(),
              Text(price, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.orange)),
            ],
          ),
        ],
      ),
    );
  }
}
