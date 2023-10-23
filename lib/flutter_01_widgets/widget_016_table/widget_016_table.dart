import 'package:flutter/material.dart';

/// Flutter code sample for [Table].

void main() => runApp(const TableExampleApp());

class TableExampleApp extends StatelessWidget {
  const TableExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Table Sample')),
        body: const TableExample(),
      ),
    );
  }
}

class TableExample extends StatelessWidget {
  const TableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FixedColumnWidth(64),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            Container(
              height: 32,
              color: Colors.green,
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.top,
              child: Container(
                height: 32,
                width: 32,
                color: Colors.red,
              ),
            ),
            Container(
              height: 64,
              color: Colors.blue,
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          children: <Widget>[
            Container(
              height: 64,
              width: 128,
              color: Colors.purple,
            ),
            Container(
              height: 32,
              color: Colors.yellow,
            ),
            Center(
              child: Container(
                height: 32,
                width: 32,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/// Flutter code sample for [Table2].

class TableExampleApp2 extends StatelessWidget {
  const TableExampleApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.yellow,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  color: Colors.cyan,
                ),
                child: Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(115),
                    1: FixedColumnWidth(115),
                    2: FixedColumnWidth(115),
                    3: FlexColumnWidth(),
                  },
                  border: const TableBorder(
                    verticalInside: BorderSide(
                      width: 2.0,
                      color: Colors.yellow,
                    ),
                  ),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                            ),
                            color: Colors.blue,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Statuse',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'استهلاك مدي',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Months No',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '10',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.yellow,
                    width: 1,
                  ),
                ),
                child: Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(115),
                    1: FlexColumnWidth(),
                  },
                  border: const TableBorder(
                    verticalInside:
                        BorderSide(width: 2.0, color: Colors.yellow),
                  ),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Customer Name',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'نجلاء حامد عبد الرازق محمد',
                                style: TextStyle(color: Colors.black),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.yellow,
                    width: 1,
                  ),
                ),
                child: Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(115),
                    1: FlexColumnWidth(),
                  },
                  border: const TableBorder(
                    verticalInside:
                        BorderSide(width: 2.0, color: Colors.yellow),
                  ),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Address',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'البيت العائلي مرج',
                                style: TextStyle(color: Colors.black),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.yellow,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  color: Colors.cyan,
                ),
                child: Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(57),
                    1: FixedColumnWidth(57),
                    2: FlexColumnWidth(),
                    3: FlexColumnWidth(),
                  },
                  border: const TableBorder(
                    verticalInside: BorderSide(
                      width: 2.0,
                      color: Colors.yellow,
                    ),
                  ),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'sub',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Account',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Months No',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Payment Code',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.yellow,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  color: Colors.cyan,
                ),
                child: Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(57),
                    1: FixedColumnWidth(57),
                    2: FlexColumnWidth(),
                    3: FlexColumnWidth(),
                  },
                  border: const TableBorder(
                    verticalInside: BorderSide(
                      width: 2.0,
                      color: Colors.yellow,
                    ),
                  ),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 35.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '0',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 35.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '5',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 35.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '1344024',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 35.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Payment Code',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.yellow,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.cyan,
                ),
                child: Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: FlexColumnWidth(),
                    1: FlexColumnWidth(),
                  },
                  children: [
                    TableRow(
                      children: [
                        Container(
                          height: 35.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                            ),
                            color: Colors.white,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                minRadius: 10,
                                maxRadius: 15,
                                child: Icon(
                                  Icons.install_desktop,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 35.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(8),
                            ),
                            color: Colors.white,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                minRadius: 10,
                                maxRadius: 15,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
