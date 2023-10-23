import 'package:flutter/material.dart';

class mySnackBar extends StatelessWidget {
  const mySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('snack'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Enter here'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text(
                  'snack bar ',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
