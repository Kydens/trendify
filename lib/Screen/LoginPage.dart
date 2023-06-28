import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendify/utils/colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () => {context.go('/')},
                child: const Image(
                  image: AssetImage('assets/icons/arrow_back.png'),
                ),
              ),
              const Image(
                image: AssetImage('assets/images/Hedgehog.png'),
                width: 42,
                height: 42,
              ),
              const SizedBox(
                width: 62,
              ),
            ],
          ),
          elevation: 0,
        ),
        body: const FormLogin(),
      ),
    );
  }
}

class FormLogin extends StatefulWidget {
  const FormLogin({
    super.key,
  });

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 80.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Masukkan Username Anda',
                  style: GoogleFonts.poppins(
                    color: fontColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: GoogleFonts.poppins(
                  color: fontColor,
                  fontSize: 10,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: fontColor,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: fontColor),
                ),
                filled: true,
                fillColor: inputBackgroundColor,
              ),
              style: GoogleFonts.poppins(color: fontColor),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Username is required!';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Text(
                  'Masukkan Password Anda',
                  style: GoogleFonts.poppins(
                    color: fontColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: GoogleFonts.poppins(
                  color: fontColor,
                  fontSize: 10,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: fontColor,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: fontColor),
                ),
                filled: true,
                fillColor: inputBackgroundColor,
              ),
              style: GoogleFonts.poppins(color: fontColor),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required!';
                }
                return null;
              },
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.go('/resetPage');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    minimumSize: const Size(91.79, 35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Lupa Password?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.go('/');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    minimumSize: const Size(91.79, 35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
