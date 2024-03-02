import 'package:crollup_test/view/themes/app_colors.dart';
import 'package:crollup_test/view/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvestCard extends StatelessWidget {
  const InvestCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 70.h,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.grey, // Set your border color here
            width: 0.5, // Set the border width
          ),
          color: AppColors.coconut,
          borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        Container(
          width: 20,
          height: 20,
          decoration: const BoxDecoration(
              color: AppColors.purple, shape: BoxShape.circle),
          child: Center(
            child: Text(
              'D',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(shadows: [
                const Shadow(
                  color: Colors.black,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                ),
              ], fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
        Space.w(10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Defipulse Index',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.purple,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$.0026',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '+7.48%',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.green),
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
