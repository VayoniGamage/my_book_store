
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF4F8DE),
        elevation: 0,
        title: Text(
          "Welcome to MyBooksStore",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.black),
            onPressed: () {},
          ),
        ],
        
      ),
      
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF4F8DE),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search books...",
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Best Selling', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  TextButton(
                    onPressed: () {
                      // Navigate to See All Books Screen
                    },
                    child: Text('See All'),
                  ),
                ],
              ),
            ),
            
            
            SizedBox(height: 15),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BookCard(
                    imageUrl: "android/assets/book1.jpg",
                    title: "The Winds from Further West",
                    author: "Alexander M. Smith",
                    price: "\$80",
                  ),
                  BookCard(
                    imageUrl: "android/assets/book2.jpg",
                    title: "Gone with the Wind",
                    author: "Margaret Mitchell",
                    price: "\$114",
                  ),
                  BookCard(
                    imageUrl: "android/assets/book3.png",
                    title: "Harry Potter",
                    author: "J K Rowling",
                    price: "\$100",
                  ),
                  BookCard(
                    imageUrl: "android/assets/book1.jpg",
                    title: "The Winds from Further West",
                    author: "Alexander M. Smith",
                    price: "\$80",
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Rated Authors', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  TextButton(
                    onPressed: () {
                      // Navigate to See All Authors Screen
                    },
                    child: Text('See All'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 160, // Adjusted height for better spacing
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AuthorCard(
                    imageUrl: "android/assets/JK_Rowling.jpg",
                    name: "J.K. Rowling",
                  ),
                  AuthorCard(
                    imageUrl: "android/assets/John grisman.jpg",
                    name: "John Grisham",
                  ),
                  AuthorCard(
                    imageUrl: "android/assets/Stephen king.jpg",
                    name: "Stephen King",
                  ),
                  AuthorCard(
                    imageUrl: "android/assets/JK_Rowling.jpg",
                    name: "J.K. Rowling",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        ],
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String author;
  final String price;

  const BookCard({
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFF4F8DE),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(imageUrl, height: 180, width: 180, fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 4),
                Text(
                  author,
                  style: TextStyle(fontSize: 12, color: const Color.fromARGB(255, 5, 0, 0)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 4),
                Text(
                  price,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 23, color: const Color.fromARGB(180, 162, 1, 18)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AuthorCard extends StatelessWidget {
  final String imageUrl;
  final String name;

  const AuthorCard({required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, // Adjusted width for better layout
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFF4F8DE),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.1),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}