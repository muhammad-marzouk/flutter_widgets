import 'package:flutter/cupertino.dart';

class BoardingModel{
  final String image;
  final String title;
  final String body;
  BoardingModel({required this.image,required this.title,required this.body});
}

List <BoardingModel> boarding =[
  BoardingModel(
      image: 'assets/images/barpark.jpg',
      title: 'barpark',
      body: 'is a Rural Municipality in Gorkha District in the Gandaki Province of northern-central Nepal'
  ),
  BoardingModel(
      image: 'assets/images/hongkong.jpg',
      title: 'hongkong',
      body: 'Hong Kong Special Administrative Region of the People\'s Republic of China '
  ),
  BoardingModel(
      image: 'assets/images/newyork.jpg',
      title: 'newyork',
      body: 'sometimes called New York State,[b] is a state in the Northeastern United States. A Mid-Atlantic state'
  ),
  BoardingModel(
      image: 'assets/images/shanghai.jpg',
      title: 'shanghai',
      body: 'is one of the four direct-administered municipalities of the People\'s Republic of China'
  ),
  BoardingModel(
      image: 'assets/images/sydney.jpg',
      title: 'sydney',
      body: 'is the capital city of the state of New South Wales'
  ),
];

Widget buildBoardingItem(BoardingModel model) => Column(
      children: [
        Expanded(
          child: Image(
            image: AssetImage(
              model.image,
            ),
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          model.title,
          style: const TextStyle(
            fontSize: 40.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          model.body,
          style: const TextStyle(
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
