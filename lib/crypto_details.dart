//Link of Crypto details :

// coins -> /coins/markets - List all supported coins price, market cap,volume and market related data
// 'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false'
// 'https://api.coingecko.com/api/v3/coins/markets?vs_currency=$currencyName&order=market_cap_desc&per_page=100&page=1&sparkline=false'

class CryptoDetails {
  CryptoDetails({
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
  final num marketCapRank;
  final String imageURL;
  final num currentPrice;
  final num priceChange;
  final num priceChangePercentage;

  final String symbol;
  final num marketCap;
  final num marketCapChange;
  final num marketCapChangePercentage;
  final num fullyDilutedValuation;
  final num totalVolume;
  final num high;
  final num low;
  final num circulatingSupply;
  final num totalSupply;

  factory CryptoDetails.fromJson(Map<String, dynamic> json) {
    return CryptoDetails(
      name: json['name'],
      marketCapRank: json['market_cap_rank'],
      imageURL: json['image'],
      currentPrice: json['current_price'],
      priceChange: json['price_change_24h'],
      priceChangePercentage: json['price_change_percentage_24h'],
      symbol: json['symbol'],
      marketCap: json['market_cap'],
      marketCapChange: json['market_cap_change_24h'],
      marketCapChangePercentage: json['market_cap_change_percentage_24h'],
      fullyDilutedValuation: json['fully_diluted_valuation'] ?? 0,
      totalVolume: json['total_volume'],
      high: json['high_24h'],
      low: json['low_24h'],
      circulatingSupply: json['circulating_supply'] ?? 0.0,
      totalSupply: json['total_supply'] ?? 0.0,
    );
  }
}

List<CryptoDetails> cryptoDetailsList = [];

List<String> currencyList = [
  'AED',
  'AUD',
  'BDT',
  'BRL',
  'CAD',
  'CHF',
  'CLP',
  'CNY',
  'CZK',
  'DKK',
  'EUR',
  'GBP',
  'HKD',
  'HUF',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'KRW',
  'KWD',
  'MYR',
  'MXN',
  'NOK',
  'NZD',
  'PHP',
  'PLN',
  'RUB',
  'SAR',
  'SEK',
  'SGD',
  'THB',
  'TRY',
  'TWD',
  'USD',
  'ZAR'
];

List<String> countryList = [
  'UAE',
  'Australia',
  'Bangladesh',
  'BRL',
  'CAD',
  'CNY',
  'EGP',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'KES',
  'KRW',
  'KWD',
  'MYR',
  'MXN',
  'NOK',
  'NZD',
  'PHP',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USA',
  'ZAR'
];

List<String> countryWithCurrencyList = [];
