import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wikusama_cafe/components/buttonCafe.dart';
import 'package:wikusama_cafe/components/logo.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 174, 118, 1),
      body: SafeArea(
        child: Column(
          children: [
            Logo(),
            // Slidable content
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
                    // Slidable PageView
                    Expanded(
                      child: PageView(
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        scrollDirection: Axis.horizontal,
                        children: [
                          // Page 1: First text content
                          Center(
                            child: Text(
                              "Temukan Makanan dan \nMinuman melalui aplikasi ini",
                              style: GoogleFonts.poppins(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          // Page 2: Second text content
                          Center(
                            child: Text(
                              "Kami menjamin kepuasan \nanda dengan pelayanan kami",
                              style: GoogleFonts.poppins(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Page Indicator
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: SmoothPageIndicator(
                        controller: _pageController, // PageController
                        count: 2, // Number of pages
                        effect: ExpandingDotsEffect(
                          dotHeight: 12,
                          dotWidth: 12,
                          activeDotColor: const Color.fromRGBO(27, 174, 118, 1),
                          dotColor: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Buttoncafe(
                          text: "Log In",
                          route: '/login',
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
