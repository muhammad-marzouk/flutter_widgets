import 'package:flutter/material.dart';

class DataTableExample extends StatelessWidget {
  const DataTableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Tale')),
      body: const Center(
        child: SnackBarExample(),
      ),
    );
  }
}

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Center(
          child: Text(
            'Employees',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataTable(
          columns: const [
            DataColumn(
              label: Text('Id'),
            ),
            DataColumn(
              label: Text('name'),
            ),
            DataColumn(
              label: Text('age'),
            ),
          ],
          rows: const [
            DataRow(
              cells: [
                DataCell(Text('1',),),
                DataCell(Text('muhammad',),),
                DataCell(Text('37',),),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('2',),),
                DataCell(Text('ahmed',),),
                DataCell(Text('75',),),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
