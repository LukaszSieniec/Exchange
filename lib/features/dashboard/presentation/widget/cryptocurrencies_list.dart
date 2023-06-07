import 'package:exchange/core/cryptocurrencies/domain/entity/cryptocurrency_market_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CryptocurrenciesList extends StatelessWidget {
  final List<CryptocurrencyMarketEntity> cryptocurrencies;

  const CryptocurrenciesList({
    required this.cryptocurrencies,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => CryptocurrenciesListTile(
          cryptocurrency: cryptocurrencies[index],
          onPressed: () {},
        ),
        separatorBuilder: (context, index) => SizedBox(height: 40.0.h),
        itemCount: cryptocurrencies.length,
      );
}

class CryptocurrenciesListTile extends StatelessWidget {
  final CryptocurrencyMarketEntity cryptocurrency;

  final VoidCallback onPressed;

  const CryptocurrenciesListTile({
    required this.cryptocurrency,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) => const SizedBox();
}
