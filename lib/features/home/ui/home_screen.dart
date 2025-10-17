import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:docdoc/features/home/ui/widgets/home_top_bar.dart';
import 'package:docdoc/features/home/ui/widgets/specialization_and_doctors_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              const HomeTopBar(),
              const DoctorBlueContainer(),
              verticalSpace(24),
              const DoctorSpecialitySeeAll(),
              verticalSpace(18),
              SpecializationAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
