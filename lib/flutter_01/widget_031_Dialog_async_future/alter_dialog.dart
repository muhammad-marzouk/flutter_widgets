import 'package:flutter/material.dart';

class AlterDialogExample extends StatelessWidget {
  const AlterDialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: const Text('click me'),
          onPressed: () {
            _showSimpleDialog(context);
          },
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text('Alert'),
              content: const Text('you pressed me'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK')),
              ],
            ));
  }

  Future<void> _showAlert2Dialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Alert'),
        content: const Text('you pressed me'),
        actions: [
          TextButton(
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
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              );
            },
            child: const Text('OK'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  Future<void> _showSimpleDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) => SimpleDialog(
        title: const Text('Alert'),
        children: [],
      ),
    );
  }
}
