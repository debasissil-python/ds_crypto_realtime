import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ds_crypto_realtime/crypto_containers.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:ds_crypto_realtime/crypto_details.dart';
import 'package:ds_crypto_realtime/dropdown_button.dart';

// ignore: use_key_in_widget_constructors
class AllCryptoScreen extends StatefulWidget {
  @override
  _AllCryptoScreenState createState() => _AllCryptoScreenState();
}

class _AllCryptoScreenState extends State<AllCryptoScreen> {
  Widget appTitle = const Text('Crypto Realtime');
  Icon homeIcon = const Icon(Icons.monetization_on, size: 30);
  Icon searchIcon = const Icon(Icons.search_rounded, size: 30);

  Future<Object> fetchCryptoCoin() async {
    cryptoDetailsList = [];

    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=$currencyName&order=market_cap_desc&per_page=100&page=1&sparkline=false'));

    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.isNotEmpty) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            cryptoDetailsList.add(
              CryptoDetails.fromJson(map),
            );
          }
        }
        // ignore: prefer_const_constructors
        setState(() {
          cryptoDetailsList;
        });
      }
      return cryptoDetailsList;
    } else {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.amber,
        ),
      );

      // return const Center(
      //   child: SpinKitDualRing(
      //     color: Colors.blueGrey,
      //     size: 100,
      //   ),
      // );

      //throw Exception('Crypto Coins did not load. ${response.statusCode}');
    }
  }

  @override
  void initState() {
    fetchCryptoCoin();
    Timer.periodic(const Duration(seconds: 3), (timer) => fetchCryptoCoin());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: appTitle,
        leading: IconButton(
          icon: homeIcon,
          onPressed: () {
            setState(() {
              fetchCryptoCoin();
            });
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 16, 10, 10),
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],
                boxShadow: const [
                  BoxShadow(
                    color: Color(0XFF263288),
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    '1 CRYPTO  =',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  DropDownButton(),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cryptoDetailsList.length,
              itemBuilder: (context, index) {
                if (cryptoDetailsList.isNotEmpty) {
                  return CryptoContainers(
                    name: cryptoDetailsList[index].name,
                    marketCapRank:
                        cryptoDetailsList[index].marketCapRank.toInt(),
                    imageURL: cryptoDetailsList[index].imageURL,
                    currentPrice:
                        cryptoDetailsList[index].currentPrice.toDouble(),
                    priceChange:
                        cryptoDetailsList[index].priceChange.toDouble(),
                    priceChangePercentage: cryptoDetailsList[index]
                        .priceChangePercentage
                        .toDouble(),
                    symbol: cryptoDetailsList[index].symbol,
                    marketCap: cryptoDetailsList[index].marketCap.toDouble(),
                    marketCapChange:
                        cryptoDetailsList[index].marketCapChange.toDouble(),
                    marketCapChangePercentage: cryptoDetailsList[index]
                        .marketCapChangePercentage
                        .toDouble(),
                    fullyDilutedValuation:
                        cryptoDetailsList[index].fullyDilutedValuation.toInt(),
                    totalVolume:
                        cryptoDetailsList[index].totalVolume.toDouble(),
                    high: cryptoDetailsList[index].high.toDouble(),
                    low: cryptoDetailsList[index].low.toDouble(),
                    circulatingSupply:
                        cryptoDetailsList[index].circulatingSupply.toDouble(),
                    totalSupply:
                        cryptoDetailsList[index].totalSupply.toDouble(),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.amber,
                      //backgroundColor: Colors.blueGrey,
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
