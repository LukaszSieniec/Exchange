import 'package:exchange/common/presentation/design/app_palette.dart';
import 'package:exchange/common/presentation/design/app_shadows.dart';
import 'package:exchange/common/presentation/widgets/app_rounded_network_image.dart';
import 'package:exchange/core/cryptocurrencies/domain/entity/cryptocurrency_market_entity.dart';
import 'package:exchange/features/dashboard/presentation/widget/trending_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class TrendingCryptocurrenciesList extends StatelessWidget {
  final List<CryptocurrencyMarketEntity> cryptocurrencies;

  const TrendingCryptocurrenciesList({
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
        separatorBuilder: (context, index) => SizedBox(width: 32.0.w),
        itemCount: cryptocurrencies.length,
        clipBehavior: Clip.none,
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
  Widget build(BuildContext context) => InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(16.0.r),
          decoration: BoxDecoration(
            color: AppPalette.backgroundBright,
            borderRadius: BorderRadius.all(Radius.circular(16.0.r)),
            boxShadow: const [AppShadows.trendingCryptocurrenciesShadow],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  AppRoundedNetworkImage(imageUrl: cryptocurrency.image),
                  SizedBox(width: 10.0.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cryptocurrency.symbol.toUpperCase(),
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        cryptocurrency.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  SizedBox(width: 10.0.w),
                  TrendingStatus(priceChange24h: cryptocurrency.priceChange24h),
                ],
              ),
              SizedBox(height: 24.0.h),
              SizedBox(
                width: 175.0.w,
                height: 100.0.h,
                child: SfSparkLineChart(
                  data: cryptocurrency.sparklineEntity.prices,
                  width: 2.0.r,
                  color: AppPalette.greenBright,
                  axisLineWidth: 0.0,
                ),
              ),
              SizedBox(height: 32.0.h),
              Text(
                '\$ ${cryptocurrency.currentPrice}',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      );
}