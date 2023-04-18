import 'package:estore/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _searchHistory = [];
  final TextEditingController _searchController = TextEditingController();
  List<ItemElement> _searchResult = [];

  Future _searchProducts(String query) async {
    final response = await http.get(
        Uri.parse(
            'https://00672285.us-south.apigw.appdomain.cloud/demo-gapsi/search?&query=${query.toLowerCase()}&page=1'),
        headers: {'X-IBM-Client-Id': 'adb8204d-d574-4394-8c1a-53226a40876e'});
    final body = jsonDecode(response.body);
    var data = Resp.fromJson(body);
    setState(() {
      _searchResult = data
          .item.props.pageProps.initialData.searchResult.itemStacks[0].items;
      print(_searchResult);
      if (!_searchHistory.contains(query)) {
        _searchHistory.add(query);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    // cargar historial de búsquedas previas
    // aquí puedes usar un paquete de persistencia como shared_preferences o hive para almacenar el historial de búsquedas
    _searchHistory = ['product 1', 'product 2', 'product 3'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("estore"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search products',
              ),
              onSubmitted: (query) {
                _searchProducts(query);
              },
            ),
          ),
          Expanded(
            child: _searchResult.isEmpty
                ? const Center(
                    child: Text('No results found'),
                  )
                : ListView.builder(
                    itemCount: _searchResult.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(
                          _searchResult[index].image,
                          width: 50,
                        ),
                        title: Text(_searchResult[index].name),
                        subtitle:
                            Text('\$${_searchResult[index].price.toString()}'),
                      );
                    },
                  ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: _searchHistory.isEmpty
                ? const Center(
                    child: Text('No search history'),
                  )
                : ListView.builder(
                    itemCount: _searchHistory.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.history),
                        title: Text(_searchHistory[index]),
                        onTap: () {
                          _searchController.text = _searchHistory[index];
                          _searchProducts(_searchHistory[index]);
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
