import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomTableExample extends StatelessWidget {
  const CustomTableExample({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Color borderColor = Colors.yellow;
    Color borderSideColor = Colors.yellow;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            // row 1
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                ),
                border: Border(
                  left: BorderSide(
                    width: 3.0,
                    color: borderSideColor,
                  ),
                  right: BorderSide(
                    width: 3.0,
                    color: borderSideColor,
                  ),
                  bottom: BorderSide(
                    width: 1.0,
                    color: borderSideColor,
                  ),
                  top: BorderSide(
                    width: 3.0,
                    color: borderSideColor,
                  ),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        alignment: Alignment.center,
                        // width: screenWidth * 0.27,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              width: 1.0,
                              color: borderSideColor,
                            ),
                          ),
                          color: Colors.blue,
                        ),
                        child: const Text('Status',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        alignment: Alignment.center,
                        // width: screenWidth * 0.27,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              width: 2.0,
                              color: borderSideColor,
                            ),
                          ),
                          color: Colors.white,
                        ),
                        child: const Text(
                          'استهلاك مدي',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        alignment: Alignment.center,
                        // width: screenWidth * 0.27,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              width: 1.0,
                              color: borderSideColor,
                            ),
                          ),
                          color: Colors.blue,
                        ),
                        child: const Text(
                          'Months No.',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        // width: (screenWidth * 0.19) - 26,
                        height: 30.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: const Text(
                          '10',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // row 2
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: BorderSide(
                    width: 3.0,
                    color: borderSideColor,
                  ),
                  right: BorderSide(
                    width: 1.0,
                    color: borderSideColor,
                  ),
                  bottom: BorderSide(
                    width: 1.0,
                    color: borderSideColor,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      alignment: Alignment.center,
                      // width: screenWidth * 0.27,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 1.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                      child: const Text('Customer Name',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 14,
                    child: Container(
                      alignment: Alignment.center,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 2.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      child: const Text(
                        'استهلاك مدي',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // row 3
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: BorderSide(
                    width: 3.0,
                    color: borderSideColor,
                  ),
                  right: BorderSide(
                    width: 1.0,
                    color: borderSideColor,
                  ),
                  bottom: BorderSide(
                    width: 1.0,
                    color: borderSideColor,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      alignment: Alignment.center,
                      // width: screenWidth * 0.27,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 1.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                      child: const Text('Address',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 14,
                    child: Container(
                      alignment: Alignment.center,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 2.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      child: const Text(
                        'البيت العائلي المرج',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // row 4
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: BorderSide(
                    width: 3.0,
                    color: borderSideColor,
                  ),
                  right: BorderSide(
                    width: 1.0,
                    color: borderSideColor,
                  ),
                  bottom: BorderSide(
                    width: 1.0,
                    color: borderSideColor,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      alignment: Alignment.center,
                      // width: screenWidth * 0.27,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 1.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                      child: const Text('Address',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 14,
                    child: Container(
                      alignment: Alignment.center,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 2.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      child: const Text(
                        'البيت العائلي المرج',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // row 5
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: BorderSide(
                    width: 3.0,
                    color: borderSideColor,
                  ),
                  right: BorderSide(
                    width: 1.0,
                    color: borderSideColor,
                  ),
                  bottom: BorderSide(
                    width: 1.0,
                    color: borderSideColor,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      // width: screenWidth * 0.27,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 1.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                      child: const Text('sub',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 1.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                      child: const Text(
                        'Account',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      alignment: Alignment.center,
                      // width: screenWidth * 0.27,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 1.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                      child: const Text('Flag Number',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      alignment: Alignment.center,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 2.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                      child: const Text(
                        'Payment Code',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // row 6
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: BorderSide(
                    width: 3.0,
                    color: borderSideColor,
                  ),
                  right: BorderSide(
                    width: 1.0,
                    color: borderSideColor,
                  ),
                  bottom: BorderSide(
                    width: 1.0,
                    color: borderSideColor,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      alignment: Alignment.center,
                      // width: screenWidth * 0.27,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 1.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                      child: const Text('Debts',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      alignment: Alignment.center,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 1.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      child: const Text(
                        '0',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      alignment: Alignment.center,
                      // width: screenWidth * 0.27,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 2.0,
                            color: borderSideColor,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      child: const Text('',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
