import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikusama_cafe/components/buttonCafe.dart';
import 'package:wikusama_cafe/components/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 174, 118, 1),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Logo(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Spacer(),
                      Buttoncafe(
                        text: "Kasir",
                        route: "/home_kasir",
                      ),
                      SizedBox(height: 5),
                      Buttoncafe(
                        text: "Admin",
                        route: "/home_admin",
                      ),
                      SizedBox(height: 5),
                      Buttoncafe(
                        text: "Manager",
                        route: "/home_kasir",
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "SIlahkan masuk ke akun anda sebagai",
                          style: GoogleFonts.poppins(fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
