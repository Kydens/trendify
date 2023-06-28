import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isPasswordVisible = false;

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
            const SizedBox(
              width: 32,
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 34, 40, 49),
        elevation: 0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.fromLTRB(16, 70, 16, 0), // Ubah padding pada bagian atas
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Buat Akun Anda',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 1.5,
                color: const Color(0xffeeeeee),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffeeeeee)),
                color: const Color(0xff393e46),
                borderRadius: BorderRadius.circular(3),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 228, 226, 226)),
                  hintText: 'Masukkan username',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 224, 12, 12)),
                  contentPadding: EdgeInsets.fromLTRB(18, 10, 18, 0),
                  prefixIcon: Icon(Icons.account_box),
                ),
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                  color: const Color(0xffeeeeee),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffeeeeee)),
                color: const Color(0xff393e46),
                borderRadius: BorderRadius.circular(3),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      color: Color.fromARGB(255, 215, 210, 210)),
                  hintText: 'Masukkan Email',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 226, 3, 3)),
                  contentPadding: EdgeInsets.fromLTRB(18, 10, 18, 0),
                  prefixIcon: Icon(Icons.mail),
                ),
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                  color: const Color(0xffeeeeee),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffeeeeee)),
                color: const Color(0xff393e46),
                borderRadius: BorderRadius.circular(3),
              ),
              child: TextField(
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 237, 235, 235)),
                  hintText: 'Masukkan Password Anda',
                  hintStyle:
                      const TextStyle(color: Color.fromARGB(255, 221, 10, 10)),
                  contentPadding: const EdgeInsets.fromLTRB(18, 10, 18, 0),
                  prefixIcon: const Icon(Icons.lock),
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
                      color: const Color(0xffeeeeee),
                    ),
                  ),
                ),
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                  color: const Color(0xffeeeeee),
                ),
              ),
            ),
            const Spacer(), // Tambahkan Spacer untuk memberikan ruang di antara kotak password dan tombol "Daftar"
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  // Logika untuk tombol "Daftar"
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
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
                    'Daftar',
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
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
