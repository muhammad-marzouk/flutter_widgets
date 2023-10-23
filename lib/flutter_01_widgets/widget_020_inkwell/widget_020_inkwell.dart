import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomIconWidget(),
            CustomButtonWidget(),
            CustomImageWidget(),
          ],
        ),
      ),
    );
  }
}


class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(50),
        highlightColor: Colors.grey.withOpacity(0.4),
        splashColor: Colors.blue.withOpacity(0.4),
        child: const Icon(Icons.account_balance, size: 90),
      ),
    );
  }
}

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(30),
        highlightColor: Colors.grey.withOpacity(0.4),
        splashColor: Colors.blue.withOpacity(0.4),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: const Text('My button',
              style: TextStyle(
                fontSize: 26.0,
              )),
        ),
      ),
    );
  }
}

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    showSnackBar (String gesture){
      var snackBar = SnackBar(content: Text('You press $gesture'));
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    return Ink(
      width: double.infinity,
      height: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
          image: NetworkImage(
              'https://www.zdnet.com/a/img/resize/ba1b1ab92085d777ab5e313b34c66a94b7aa1236/2023/06/05/79a43eb8-ce38-488c-8cc0-e04699aaca7f/bing.jpg?auto=webp&width=1280'),
          fit: BoxFit.fill,
        ),
      ),
      child: InkWell(
        onTap: () {
          showSnackBar('onTap');
        },
        onDoubleTap: (){
          showSnackBar('onDoubleTap');
        },
        onLongPress: (){
          showSnackBar('onLongPress');
        },
        borderRadius: BorderRadius.circular(30),
        highlightColor: Colors.grey.withOpacity(0.4),
      ),
    );
  }
}
