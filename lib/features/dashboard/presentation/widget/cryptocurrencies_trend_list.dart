import 'package:exchange/core/cryptocurrencies/domain/entity/cryptocurrency_market_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CryptocurrenciesTrendList extends StatelessWidget {
  final List<CryptocurrencyMarketEntity> cryptocurrencies;

  const CryptocurrenciesTrendList({
    required this.cryptocurrencies,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => CryptocurrencyTrendTile(
          cryptocurrency: cryptocurrencies[index],
          onPressed: () {},
        ),
        separatorBuilder: (context, index) => SizedBox(width: 12.0.w),
        itemCount: cryptocurrencies.length,
      );
}

class CryptocurrencyTrendTile extends StatelessWidget {
  final CryptocurrencyMarketEntity cryptocurrency;

  final VoidCallback onPressed;

  const CryptocurrencyTrendTile({
    required this.cryptocurrency,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) => const SizedBox();
}
