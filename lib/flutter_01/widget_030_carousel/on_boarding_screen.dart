import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'on_boarding_model.dart';

class OnBoardingScreen extends StatelessWidget {
  final pageController = PageController();
  bool isLast = false;
  bool isFirst = true;

  OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged:(int index) {
                if(index == boarding.length -1){
                  isFirst =false;
                  isLast = true;
                }else if(index == 0){
                  isFirst =true;
                  isLast = false;
                }else{
                  isFirst =false;
                  isLast = false;
                }
              },
              itemBuilder: (context, index) =>
                  buildBoardingItem(boarding[index]),
              itemCount: boarding.length,
              physics: const BouncingScrollPhysics(),
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: boarding.length,
            effect: const ScrollingDotsEffect()	,
          ),
          Row(
            children: [
              FloatingActionButton(
                onPressed: () {
                  if (!isFirst){
                    pageController.previousPage(
                        duration: const Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.easeInCirc);
                  }
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20.0,
                ),
              ),
              const Spacer(),
              FloatingActionButton(
                onPressed: () {
                  if (!isLast){
                    pageController.nextPage(
                        duration: const Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.easeInCirc);
                  }
                },
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
