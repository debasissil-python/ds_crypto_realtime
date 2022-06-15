import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'all_crypto_screen.dart';

// ignore: use_key_in_widget_constructors
class CryptoLoadingPage extends StatefulWidget {
  @override
  _CryptoLoadingPageState createState() => _CryptoLoadingPageState();
}

class _CryptoLoadingPageState extends State<CryptoLoadingPage> {
  @override
  void initState() {
    getCryptoData();
    super.initState();
  }

  void getCryptoData() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AllCryptoScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 80, 15, 30),
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("images/crypto_realtime.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.colorDodge),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Crypto Realtime',
              style: TextStyle(
                fontSize: 28,
                color: Colors.limeAccent,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: Offset(5, 5),
                    blurRadius: 5,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const SpinKitSpinningLines(
              size: 120,
              color: Colors.limeAccent,
              lineWidth: 4,
            ),
            Center(
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Column(
                  children: const [
                    Text(
                      'fuelled by',
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 2,
                        color: Colors.limeAccent,
                        shadows: [
                          Shadow(
                            offset: Offset(5, 5),
                            blurRadius: 5,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Codoweb',
                      style: TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 2,
                        color: Colors.limeAccent,
                        shadows: [
                          Shadow(
                            offset: Offset(5, 5),
                            blurRadius: 4,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
