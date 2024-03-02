import 'package:crollup_test/view/themes/app_colors.dart';
import 'package:crollup_test/view/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionCard extends StatelessWidget {
  final String date;
  final String title;
  final String status;
  const TransactionCard({
    required this.date,
    required this.title,
    required this.status,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      height: 110.h,
      color: Colors.grey[100],
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 35.w,
                height: 35.h,
                decoration: BoxDecoration(
                    color: status == 'Pending'
                        ? AppColors.amber.withOpacity(0.1)
                        : AppColors.green.withOpacity(0.1),
                    shape: BoxShape.circle),
                child: Icon(
                  status == 'Pending'
                      ? Icons.add
                      : Icons.call_received_outlined,
                  size: 18,
                  color:
                      status == 'Pending' ? AppColors.amber : AppColors.green,
                ),
              ),
              Space.w(5),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.black, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(date),
              Text(
                '\$10,000',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Space.h(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transaction Status',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                status,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: status == 'Pending'
                          ? AppColors.amber
                          : AppColors.green,
                    ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
