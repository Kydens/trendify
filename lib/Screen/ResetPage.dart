import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ResetPage extends StatefulWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  _ResetPageState createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  bool _isPasswordVisible = false;
  bool _isPasswordVisible1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 40, 49),
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/Hedgehog.png',
              width: 42,
              height: 42,
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 34, 40, 49),
        elevation: 0,
      ),
      body: Padding(
        padding:
            EdgeInsets.fromLTRB(16, 70, 16, 0), // Ubah padding pada bagian atas
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reset Password',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 1.5,
                color: Color(0xffeeeeee),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffeeeeee)),
                color: Color(0xff393e46),
                borderRadius: BorderRadius.circular(3),
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 236, 233, 233)),
                  hintText: 'Masukkan Email Anda',
                  hintStyle:
                      TextStyle(color: const Color.fromARGB(255, 206, 25, 25)),
                  contentPadding: EdgeInsets.fromLTRB(18, 10, 18, 0),
                  prefixIcon: Icon(Icons.mail),
                ),
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                  color: Color(0xffeeeeee),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffeeeeee)),
                color: Color(0xff393e46),
                borderRadius: BorderRadius.circular(3),
              ),
              child: TextField(
                obscureText: !_isPasswordVisible1,
                decoration: InputDecoration(
                  labelText: 'Password Baru',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Password baru',
                  hintStyle:
                      TextStyle(color: const Color.fromARGB(255, 239, 10, 10)),
                  contentPadding: EdgeInsets.fromLTRB(18, 10, 18, 0),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPasswordVisible1 = !_isPasswordVisible1;
                      });
                    },
                    child: Icon(
                      _isPasswordVisible1
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color(0xffeeeeee),
                    ),
                  ),
                ),
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                  color: Color(0xffeeeeee),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffeeeeee)),
                color: Color(0xff393e46),
                borderRadius: BorderRadius.circular(3),
              ),
              child: TextField(
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Konfirmasi Password ',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Masukkan Password Anda',
                  hintStyle:
                      TextStyle(color: const Color.fromARGB(255, 225, 16, 16)),
                  contentPadding: EdgeInsets.fromLTRB(18, 10, 18, 0),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    child: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color(0xffeeeeee),
                    ),
                  ),
                ),
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                  color: Color(0xffeeeeee),
                ),
              ),
            ),
            Spacer(), // Tambahkan Spacer untuk memberikan ruang di antara kotak password dan tombol "Daftar"
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  // Logika untuk tombol "Daftar"
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text(
                    'Reset',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
