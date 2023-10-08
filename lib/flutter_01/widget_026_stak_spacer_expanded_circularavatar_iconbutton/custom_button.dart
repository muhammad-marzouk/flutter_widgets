
import 'package:flutter/material.dart';

class CustomButtonWithSizeBox extends StatelessWidget {
  const CustomButtonWithSizeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children:[
            SizedBox(
              width: 100,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Click'),),
            ),
            SizedBox(height: 10.0,),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.deepPurple,
                  elevation: 10.0,
                  // minimumSize: Size(250, 250),
                ),
                onPressed: (){},
                child: Text('Click'),),
            ),
          ],
        ),
      ),
    );
  }
}
