import 'package:flutter/material.dart';
import 'package:homehaven/widgets/custom_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomSearchAppBar(),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Stack(
              children: [
                // Background Image
                Container(
                  height: 210,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Linear Gradient Overlay
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: 210,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(21, 102, 81, 0.94),
                          Color.fromRGBO(21, 102, 81, 0.67),
                          Color.fromRGBO(21, 102, 81, 0.0),
                        ],
                        stops: [0.2642, 0.4502, 0.6612],
                      ),
                    ),
                  ),
                ),
                // Promo Text
                Positioned(
                  top: 30,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Celebrate The\nSeason With Us!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Get discounts up to 75% for\nfurniture & decoration',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Shop Now',
                          style: TextStyle(
                            color: Color(0xFF156651),
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
