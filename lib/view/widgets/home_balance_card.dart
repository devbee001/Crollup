import 'package:crollup_test/view/themes/app_colors.dart';
import 'package:crollup_test/view/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBalanceCard extends StatelessWidget {
  const HomeBalanceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.coconut, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$10,000.00',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.purple,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\$70,000.00',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.purple,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Space.h(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total amount invested',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColors.grey, fontSize: 14),
              ),
              Text(
                'Current Value',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColors.grey, fontSize: 14),
              ),
            ],
          ),
          Space.h(20),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 0.0),
              trackHeight: 3,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0.0),
              thumbColor: Colors.transparent,
            ),
            child: Slider(
                activeColor: AppColors.black,
                value: 0.5,
                onChanged: (value) {}),
          ),
          Space.h(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '5th May, 2023',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
