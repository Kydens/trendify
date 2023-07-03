import 'package:flutter/material.dart';
import 'package:trendify/responsive/mobile_screen_layout.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 40, 49),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 40, 49),
        elevation: 0,
        centerTitle: true,
        leading: Container(), // Hapus widget IconButton di sini
        title: Container(
          width: 265,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: TextField(
            style: TextStyle(color: Color.fromARGB(255, 247, 246, 246)),
            textAlign: TextAlign.start,
            onChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              'Search Results for "$searchQuery"',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: MobileScreenLayout(),
            ),
          ],
        ),
      ),
    );
  }
}
