import 'package:flutter/material.dart';

class ListSeparatedExample extends StatelessWidget {
  const ListSeparatedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, index) => mylist(),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: 10,
        ),
      ),
    );
  }

  Widget mylist() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://images.unsplash.com/photo-1476712395872-c2971d88beb7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
          height: 200,
          width: 200,
        ),
      ],
    );
  }
}

class ListSeparatedExample2 extends StatelessWidget {
  ListSeparatedExample2({super.key});

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) => Container(
        height: 50,
        color: Colors.amber[colorCodes[index]],
        child: Center(
          child: Text(
            'Entry ${entries[index]}',
            style: const TextStyle(
                decoration: TextDecoration.none,
            ),
          ),

        ),
      ),
    );
  }
}

class ListSeparatedExample3 extends StatelessWidget {

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  ListSeparatedExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) => Container(
        height: 50,
        color: Colors.amber[colorCodes[index]],
        child: Center(
          child: Text(
            'Entry ${entries[index]}',
            style: const TextStyle(
              decoration: TextDecoration.none,
            ),
          ),

        ),
      ), separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

class ListSeparatedExample4 extends StatelessWidget {
  ListSeparatedExample4({super.key});

  List<String> entries = <String>[
    'https://images.unsplash.com/photo-1476712395872-c2971d88beb7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
    'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
    'https://media.licdn.com/dms/image/D4D12AQEVs_HupaAs3g/article-cover_image-shrink_600_2000/0/1686243298235?e=2147483647&v=beta&t=_H3xIxhOyD0GqYsit5gIn0Y0bZkLnzUmNaGGbw0Oc-w',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVhKrEOPHakk2lmv_YJGy-f2lYTGCRDMZluMKRYCyhmMxwSeVfjPe8ymPHuQ7bBlcJ-2g&usqp=CAU',
    'https://miro.medium.com/v2/resize:fit:1400/1*afebigvqdHvcJ-mkuvFoYA.jpeg',
    'https://miro.medium.com/v2/resize:fit:663/0*u9wa-ubxqJ1sGbsE.jpg',
    'https://miro.medium.com/v2/resize:fit:775/0*rZecOAy_WVr16810',
    'https://miro.medium.com/v2/resize:fit:1400/1*08_mC73bTLmACsZibB15qA.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, index) => mylist(index),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: entries.length,
        ),
      ),
    );
  }

  Widget mylist(index) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          child: Image.network(
            entries[index],
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
