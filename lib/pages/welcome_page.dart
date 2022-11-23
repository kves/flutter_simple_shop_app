import 'package:flutter/material.dart';

import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // grocery man logo
          Padding(
            padding: const EdgeInsets.only(
                top: 100.0, left: 20, right: 20, bottom: 20),
            child: Image.asset('lib/images/grocery_man_logo.png'),
          ),

          // main text
          const Padding(
            padding:
                EdgeInsets.only(left: 40.0, right: 40, top: 20, bottom: 20),
            child: Text(
              'We deliver grocery at your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          //bottom text
          Padding(
            padding:
                const EdgeInsets.only(left: 40.0, right: 40, top: 0, bottom: 0),
            child: Text(
              'Groceer gives you fresh vegetables and fruits. \n Order fresh items from groceer',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          const Spacer(),
          // get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber[200],
                  borderRadius: BorderRadius.circular(30)),
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 30.0, right: 30, top: 20, bottom: 20),
                child: Text(
                  'Get started!',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
