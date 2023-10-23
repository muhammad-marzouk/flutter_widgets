import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class OfLineMode extends StatefulWidget {
  @override
  State<OfLineMode> createState() => _OfLineModeState();
}

class _OfLineModeState extends State<OfLineMode> {
  List _todos = [];

  // load first time to return data in list
  @override
  void initState(){
    _loadData();
    super.initState();
  }

  Future <void>  _loadData() async{
    const url = 'https://jsonplaceholder.typicode.com/todos';
    try {
      final http.Response response = await http.get(Uri.parse(url));
      final loadedTodos = json.decode(response.body);
      setState(() {
        _todos = loadedTodos;
      });
    }catch(err){
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('On Line Data'),
      ),
      body:  RefreshIndicator(
        onRefresh: _loadData,
        child: ListView.builder(
            itemCount: _todos.length,
            itemBuilder: (BuildContext ctx, index){
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                child: ListTile(
                    leading: Text(_todos[index]['id'].toString()),
                    title: Text(_todos[index]['title']),
                    trailing: _todos[index]['completed']
                        ? const Icon(Icons.check_circle,color: Colors.blue,)
                        : const Icon(Icons.circle,color: Colors.yellow,)
                ),
              );
            }
        ),
      ),
    );
  }
}