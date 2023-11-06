import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_03_routing/route_1/second_screen.dart';


class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter name'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _email,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter email'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _phone,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter phone'
                ),
              ),
            ),

            TextButton(
              child: const Text('Register'),
              onPressed: (){

                Navigator.pushReplacementNamed(context, 'second_Screen');
                // Navigator.pushNamed(context, 'second');

                // Navigator.push(context,
                //   MaterialPageRoute(
                //       builder: (context)=>  SecondScreen(name: _name.text,phone: _phone.text,email: _email.text,),
                //   ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}