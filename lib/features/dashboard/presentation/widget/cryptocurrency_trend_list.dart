import 'package:flutter/material.dart';

class CryptocurrencyTrendList extends StatelessWidget {
  const CryptocurrencyTrendList({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemBuilder: (context, index) => const CryptocurrencyTrendList(),
      );
}

class CryptocurrencyTrendTile extends StatelessWidget {
  const CryptocurrencyTrendTile({super.key});

  @override
  Widget build(BuildContext context) => const SizedBox();
}
