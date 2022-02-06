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
      //final queryLower = query.toLowerCase();
    });
    // query.isEmpty
    //     ? recentCryptos
    //     :

    //return cryptoLower.contains(queryLower);

    //.toList();
    //return buildSuggestionsSuccess(suggestions.toList());
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        // final suggestion = suggestions[index];
        // final queryText = suggestion.substring(0, query.length);
        // final remainingText = suggestion.substring(query.length);
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

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = cryptoDetailsList.where((name) {
      return name.toLowerCase().contains(query.toLowerCase());
      //final queryLower = query.toLowerCase();
    });
    // query.isEmpty
    //     ? recentCryptos
    //     :

    //return cryptoLower.contains(queryLower);

    //.toList();
    //return buildSuggestionsSuccess(suggestions.toList());
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        // final suggestion = suggestions[index];
        // final queryText = suggestion.substring(0, query.length);
        // final remainingText = suggestion.substring(query.length);
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

  // Widget buildSuggestionsSuccess(List<String> suggestions) => ListView.builder(
  //       itemCount: suggestions.length,
  //       itemBuilder: (context, index) {
  //         final suggestion = suggestions[index];
  //         final queryText = suggestion.substring(0, query.length);
  //         final remainingText = suggestion.substring(query.length);
  //
  //         return ListTile(
  //           onTap: () {
  //             query = suggestion;
  //             showResults(context);
  //           },
  //           leading: Icon(Icons.money),
  //           title: RichText(
  //             text: TextSpan(
  //               text: queryText,
  //               style: TextStyle(
  //                 color: Colors.black,
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 20,
  //               ),
  //               children: [
  //                 TextSpan(
  //                   text: remainingText,
  //                   style: TextStyle(
  //                     color: Colors.purpleAccent,
  //                     fontWeight: FontWeight.normal,
  //                     fontSize: 20,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       },
  //     );
}

// SingleChildScrollView(
// padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Image.asset(
// "images/crypto_image.jpg",
// height: 120,
// ),
// SizedBox(height: 15),
// Text(
// query.toUpperCase(),
// style: TextStyle(
// color: Colors.red[900],
// fontSize: 40,
// fontWeight: FontWeight.bold,
// ),
// ),
// SizedBox(height: 10),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // ignore: prefer_const_literals_to_create_immutables
// children: [
// Text(
// 'Ranking : 1',
// style: TextStyle(
// color: Colors.blueGrey[500],
// fontSize: 20,
// fontWeight: FontWeight.bold,
// ),
// ),
// Text(
// query.toLowerCase(),
// style: TextStyle(
// color: Colors.blueGrey[500],
// fontSize: 20,
// fontWeight: FontWeight.bold,
// ),
// ),
// ],
// ),
// SizedBox(height: 20),
// Text(
// 'Last 24 Hours',
// style: TextStyle(
// color: Colors.deepOrange,
// fontSize: 20,
// fontWeight: FontWeight.bold,
// ),
// ),
// SizedBox(height: 15),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: const [
// Text(
// 'High : ',
// style: TextStyle(
// color: Colors.deepOrange,
// fontSize: 14,
// fontWeight: FontWeight.bold,
// ),
// ),
// Text(
// 'Low: ',
// style: TextStyle(
// color: Colors.deepOrange,
// fontSize: 14,
// fontWeight: FontWeight.bold,
// ),
// ),
// ],
// ),
