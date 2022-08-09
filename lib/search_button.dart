// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CryptoSearch extends SearchDelegate<String> {
  final List<String> cryptoDetailsList;

  CryptoSearch(this.cryptoDetailsList);

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: Icon(
            Icons.cancel_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null.toString());
            } else {
              query = '';
              showSuggestions(context);
            }
          },
        )
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.black,
        ),
        onPressed: () {
          close(context, null.toString());
        },
      );

  @override
  // ignore: avoid_unnecessary_containers
  Widget buildResults(BuildContext context) {
    final suggestions = cryptoDetailsList.where((name) {
      return name.toLowerCase().contains(query.toLowerCase());
    });
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            cryptoDetailsList.elementAt(index),
            style: TextStyle(
              color: Colors.purpleAccent,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = cryptoDetailsList.where((name) {
      return name.toLowerCase().contains(query.toLowerCase());
    });

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          //leading: Icon(Icons.money),
          title: Text(
            cryptoDetailsList.elementAt(index),
            style: TextStyle(
              color: Colors.purpleAccent,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
        );
      },
    );
  }
}
