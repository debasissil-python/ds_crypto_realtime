// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'dropdown_button.dart';

class DetailedIndividualCrypto extends StatefulWidget {
  // const DetailedIndividualCrypto({Key? key,
  //   this.name,
  //   this.marketCapRank,
  //   this.imageURL,
  //   this.currentPrice,
  //   this.priceChange,
  //   this.priceChangePercentage,
  //   this.symbol,
  //   this.marketCap,
  //   this.fullyDilutedValuation,
  //   this.totalVolume,
  //   this.high,
  //   this.low,
  //   this.circulatingSupply,
  //   this.totalSupply}) : super(key: key);

  const DetailedIndividualCrypto({
    Key? key,
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
  }) : super(key: key);

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
  DetailedIndividualCryptoState createState() =>
      DetailedIndividualCryptoState();
}

class DetailedIndividualCryptoState extends State<DetailedIndividualCrypto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Detailed Crypto',
        ),
      ),
      // ignore: avoid_unnecessary_containers
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(12, 20, 12, 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFF2C8C8),
                      blurRadius: 15,
                      spreadRadius: 6,
                    ),
                  ]),
              child: Image.network(
                widget.imageURL,
                height: 80,
              ),
            ),
            SizedBox(height: 20),
            Text(
              widget.name.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.priceChange.toDouble() < 0
                    ? Colors.red[700]
                    : Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Ranking : ${widget.marketCapRank}',
                  style: TextStyle(
                    color: Color(0XFF263238),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Flexible(
                  child: Text(
                    widget.symbol.toString().toLowerCase(),
                    style: TextStyle(
                      color: Color(0XFF263238),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Last 24 Hours',
              style: TextStyle(
                color: Colors.deepOrange[900],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFF2C8C8),
                      blurRadius: 10,
                      spreadRadius: 6,
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'High : ',
                    style: TextStyle(
                      color: Color(0XFF263238),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      widget.high.toDouble().toStringAsFixed(0),
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Low: ',
                    style: TextStyle(
                      color: Color(0XFF263238),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      widget.low.toDouble().toStringAsFixed(0),
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "More Stats in '$currencyName' ",
              style: TextStyle(
                color: Colors.deepOrange[900],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueGrey,
                      blurRadius: 10,
                      spreadRadius: 4,
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Current Price ($currencyName) : ',
                        style: TextStyle(
                          color: Color(0XFF263238),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        widget.currentPrice.toDouble().toStringAsFixed(0),
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Price Change : ',
                        style: TextStyle(
                          color: Color(0XFF263238),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.priceChange.toDouble() < 0
                            ? widget.priceChange.toDouble().toStringAsFixed(2)
                            : '+ ${widget.priceChange.toDouble().toStringAsFixed(2)}',
                        style: TextStyle(
                          color: widget.priceChange.toDouble() < 0
                              ? Colors.red[900]
                              : Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Flexible(
                        child: Text(
                          'Price % Change : ',
                          style: TextStyle(
                            color: Color(0XFF263238),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        widget.priceChangePercentage.toDouble() < 0
                            ? '${widget.priceChangePercentage.toDouble().toStringAsFixed(2)} %'
                            : '+ ${widget.priceChangePercentage.toDouble().toStringAsFixed(2)} %',
                        style: TextStyle(
                          color: widget.priceChangePercentage.toDouble() < 0
                              ? Colors.red[900]
                              : Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Market Cap : ',
                        style: TextStyle(
                          color: Color(0XFF263238),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          widget.marketCap.toDouble().toStringAsFixed(0),
                          style: TextStyle(
                            color: widget.marketCap.toDouble() < 0
                                ? Colors.red[900]
                                : Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Flexible(
                        child: Text(
                          'Market Cap Change : ',
                          style: TextStyle(
                            color: Color(0XFF263238),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          widget.marketCapChange.toDouble() < 0
                              ? widget.marketCapChange
                                  .toDouble()
                                  .toStringAsFixed(0)
                              : '+ ${widget.marketCapChange.toDouble().toStringAsFixed(0)}',
                          style: TextStyle(
                            color: widget.marketCapChange.toDouble() < 0
                                ? Colors.red[900]
                                : Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Flexible(
                        child: Text(
                          'Market Cap % Change: ',
                          style: TextStyle(
                            color: Color(0XFF263238),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          widget.marketCapChangePercentage.toDouble() < 0
                              ? '${widget.marketCapChangePercentage.toDouble().toStringAsFixed(2)} %'
                              : '+ ${widget.marketCapChangePercentage.toDouble().toStringAsFixed(2)} %',
                          style: TextStyle(
                            color:
                                widget.marketCapChangePercentage.toDouble() < 0
                                    ? Colors.red[900]
                                    : Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Flexible(
                        child: Text(
                          'Fully Diluted Valuation : ',
                          style: TextStyle(
                            color: Color(0XFF263238),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          widget.fullyDilutedValuation
                              .toDouble()
                              .toStringAsFixed(0),
                          style: TextStyle(
                            color: widget.fullyDilutedValuation.toDouble() < 0
                                ? Colors.red[900]
                                : Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Total Volume : ',
                        style: TextStyle(
                          color: Color(0XFF263238),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          widget.totalVolume.toDouble().toStringAsFixed(0),
                          style: TextStyle(
                            color: widget.totalVolume.toDouble() < 0
                                ? Colors.red[900]
                                : Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Flexible(
                        child: Text(
                          'Circulating Supply : ',
                          style: TextStyle(
                            color: Color(0XFF263238),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          widget.circulatingSupply
                              .toDouble()
                              .toStringAsFixed(0),
                          style: TextStyle(
                            color: widget.circulatingSupply.toDouble() < 0
                                ? Colors.red[900]
                                : Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Total Supply : ',
                        style: TextStyle(
                          color: Color(0XFF263238),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          widget.totalSupply.toDouble().toStringAsFixed(0),
                          style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
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
    );
  }
}
