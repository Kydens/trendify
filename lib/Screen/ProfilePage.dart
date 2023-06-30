import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendify_clone/responsive/MobileScreenLayout.dart';
import 'package:trendify_clone/SearchPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {Page
  bool _isPasswordVisible = false;
  bool _isLiked = false;

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  void navigateToprofile() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const ProfilePage),
      ),
    );
  }

  void navigateTopsearch() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const SearchPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 40, 49),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(
              image: AssetImage('images/arrow_back.png'),
            ),
            Image.asset(
              'images/Hedgehog.png',
              width: 42,
              height: 42,
            ),
            const SizedBox(width: 32),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 34, 40, 49),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Center(
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 253, 254, 255),
                radius: 40,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(155, 130, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmed',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    color: Color(0xffeeeeee),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Container(
            // Properti dan pengaturan lainnya di sini
            child: Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(32, 400, 16, 0)),
                Text(
                  '0 Post',
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width:
                      12, // Add spacing between the first and second text widgets
                ),
                Text(
                  '69 Following',
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width:
                      12, // Add spacing between the second and third text widgets
                ),
                Text(
                  '71 Followers',
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(140, 160, 70, 0),
            child: Text(
              '@Ahmad696969',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.5,
                color: Color(0xffeeeeee),
              ),
            ),
          ),
          Positioned(
            top: 235,
            left: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 24, 236, 255),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'test 123.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: _toggleLike,
                        child: Row(
                          children: [
                            Icon(
                              _isLiked ? Icons.favorite : Icons.favorite_border,
                              color: _isLiked ? Colors.red : Colors.black,
                              size: 17,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '15',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'June 27, 2023',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: MobileScreenLayout(),
          ),
          Positioned(
            bottom: 85,
            left: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'What\'s happening?',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      // Add tweet functionality here
                    },
                    child: Text('Tweet'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
