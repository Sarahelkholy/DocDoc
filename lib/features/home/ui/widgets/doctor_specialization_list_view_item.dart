import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecializationListViewItem extends StatelessWidget {
  final SpecializationData? specializationData;
  final int itemIndex;
  const DoctorSpecializationListViewItem({
    super.key,
    this.specializationData,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorsManager.lightBlue,
            child: Image.asset(
              'assets/images/doctor_specility.png',
              height: 30.h,
              width: 30.w,
            ),
          ),
          verticalSpace(8),
          Text(
            specializationData?.name ?? 'General',
            style: TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
