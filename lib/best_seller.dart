import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

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
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  Text(
                    "Rise And Shine! It's Breakfast Time",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Best Seller",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BestSellerScreen()),
                      );
                    },
                    child: const Text(
                      "View All",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: bestSellers.take(3).map((item) {
                  return bestSellerItem(
                      item['image']!, item['name']!, item['price']!);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      
    );
  }

  Widget bestSellerItem(String imagePath, String name, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(imagePath,
                width: 100, height: 80, fit: BoxFit.cover),
          ),
          const SizedBox(height: 5),
          Text(name,
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text(price,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange)),
        ],
      ),
    );
  }
}

class BestSellerScreen extends StatelessWidget {
  const BestSellerScreen({super.key});

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
