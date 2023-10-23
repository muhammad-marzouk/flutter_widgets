
import 'package:flutter/material.dart';

class CircleAvatarSizeBox extends StatelessWidget {
  const CircleAvatarSizeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/picture-circle-avatar-image-png.png'),
              backgroundColor: Colors.brown.shade800,
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: const Text('AH',style: TextStyle(fontSize: 10.0,color: Colors.blue),),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.yellow,
              backgroundImage: AssetImage('assets/images/picture-circle-avatar-image-png.png'),
              radius: 50,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 50,
                  start: 70,
                ),
                child: CircleAvatar(
                  radius: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
