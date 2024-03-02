import 'package:crollup_test/model/quick_action_model.dart';
import 'package:crollup_test/view/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({
    super.key,
    required this.quickActions,
  });

  final List<QuickActionModel> quickActions;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          3,
          (index) => Column(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: quickActions[index].color.withOpacity(0.1),
                        shape: BoxShape.circle),
                    child: Icon(quickActions[index].icon,
                        color: quickActions[index].color),
                  ),
                  Space.h(5),
                  Text(quickActions[index].title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 12, fontWeight: FontWeight.bold))
                ],
              )),
    );
  }
}
