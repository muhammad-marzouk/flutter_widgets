import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableBar extends StatelessWidget {
  const SlidableBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: Colors.red,
                icon: Icons.delete,
              ),
              SlidableAction(
                flex: 2,
                onPressed: ((context) {}),
                backgroundColor: Colors.blue,
                icon: Icons.archive_outlined,
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: Colors.red,
                icon: Icons.delete,
              ),
              SlidableAction(
                flex: 2,
                onPressed: ((context) {}),
                backgroundColor: Colors.blue,
                icon: Icons.archive_outlined,
              ),
            ],
          ),
          child: Container(
            color: Colors.grey[33],
            child: const ListTile(
              title: Text('Muhammad'),
              subtitle: Text('01011389756'),
              leading: Icon(
                Icons.person,
                size: 40.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
