import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:trendify/utils/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
        ),
        body: const Index(),
      ),
    );
  }
}

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/hedgehog.png',
                    width: 117,
                    height: 117,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.go('/login');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(57, 62, 70, 100.0),
                  minimumSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Text(
                  'Buat Akun',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 46.0),
                      ),
                      Text(
                        'Dengan mendaftar anda menyetujui',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: fontColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 46.0),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Persyaratan',
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: hyperLinkColor,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Text(
                        ', ',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: fontColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Kebijakan Privasi',
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: hyperLinkColor,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Text(
                        ', dan ',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: fontColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Penggunaan',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: hyperLinkColor,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 46.0),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Cookie',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: hyperLinkColor,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Text(
                        '.',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: fontColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 46.0),
                      ),
                      Text(
                        'Sudah memiliki akun?',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: fontColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            context.go('/login');
                          },
                          child: Text(
                            'Masuk',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: hyperLinkColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
