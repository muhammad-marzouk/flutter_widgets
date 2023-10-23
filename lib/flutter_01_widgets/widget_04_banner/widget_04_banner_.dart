import 'package:flutter/material.dart';

class myBanner extends StatelessWidget {
  const myBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banner'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Banner(
            message: 'hi',
            location: BannerLocation.topStart,
            child: Container(
              width: double.infinity,
              height: 50.0,
              color: Colors.green,
              child: Center(
                child: Text('Muhammad',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Banner(
            message: 'hi',
            location: BannerLocation.topStart,
            child: Container(
              width: double.infinity,
              height: 50.0,
              color: Colors.green,
              child: Center(
                child: Text('Muhammad',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
