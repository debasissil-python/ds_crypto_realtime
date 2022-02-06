import 'package:flutter/material.dart';
import 'individual_detailed_crypto_page.dart';

// ignore: use_key_in_widget_constructors
class CryptoContainers extends StatelessWidget {
  const CryptoContainers({
    required this.name,
    required this.marketCapRank,
    required this.imageURL,
    required this.currentPrice,
    required this.priceChange,
    required this.priceChangePercentage,
    required this.symbol,
    required this.marketCap,
    required this.marketCapChange,
    required this.marketCapChangePercentage,
    required this.fullyDilutedValuation,
    required this.totalVolume,
    required this.high,
    required this.low,
    required this.circulatingSupply,
    required this.totalSupply,
  });

  final String name;
  final int marketCapRank;
  final String imageURL;
  final double currentPrice;
  final double priceChange;
  final double priceChangePercentage;

  final String symbol;
  final double marketCap;
  final double marketCapChange;
  final double marketCapChangePercentage;
  final int fullyDilutedValuation;
  final double totalVolume;
  final double high;
  final double low;
  final double circulatingSupply;
  final double totalSupply;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        padding: const EdgeInsets.fromLTRB(
          6,
          6,
          12,
          6,
        ),
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[200],
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFF2C8C8),
                blurRadius: 6,
                spreadRadius: 4,
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                6,
                6,
                12,
                6,
              ),
              child: ElevatedButton(
                child: Image.network(imageURL),
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) => DetailedIndividualCrypto(
                      name: name,
                      marketCapRank: marketCapRank,
                      imageURL: imageURL,
                      currentPrice: currentPrice,
                      priceChange: priceChange,
                      priceChangePercentage: priceChangePercentage,
                      symbol: symbol,
                      marketCap: marketCap,
                      marketCapChange: marketCapChange,
                      marketCapChangePercentage: marketCapChangePercentage,
                      fullyDilutedValuation: fullyDilutedValuation,
                      totalVolume: totalVolume,
                      high: high,
                      low: low,
                      circulatingSupply: circulatingSupply,
                      totalSupply: totalSupply,
                    ),
                  );
                  Navigator.of(context).push(route);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  primary: Colors.grey[100],
                  onPrimary: Colors.blueGrey[500],
                  //shadowColor: Colors.grey,
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  side: const BorderSide(
                    color: Colors.black45,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            Expanded(
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name.toUpperCase(),
                      style: TextStyle(
                        color: priceChange.toDouble() < 0
                            ? Colors.red[900]
                            : Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rank: ' + marketCapRank.toString(),
                      style: const TextStyle(
                        color: Color(0XFF263238),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  currentPrice.toDouble().toString(),
                  style: const TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Flexible(
                  child: Text(
                    priceChange.toDouble() < 0
                        ? priceChange.toDouble().toStringAsFixed(3)
                        : '+ ' + priceChange.toDouble().toStringAsFixed(3),
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: priceChange.toDouble() < 0
                          ? Colors.red[900]
                          : Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  priceChangePercentage.toDouble() < 0
                      ? priceChangePercentage.toDouble().toStringAsFixed(3) +
                          ' %'
                      : '+ ' +
                          priceChangePercentage.toDouble().toStringAsFixed(3) +
                          ' %',

                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: priceChangePercentage.toDouble() < 0
                        ? Colors.red[900]
                        : Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
