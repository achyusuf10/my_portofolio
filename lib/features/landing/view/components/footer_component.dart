import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';

class FooterComponent extends StatelessWidget {
  const FooterComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
      ),
      child: Text(
        '© 2023 | Built with Flutter By Achmad Yusuf',
        textAlign: TextAlign.center,
        style: AppTextStyles.body3NormalAll,
      ),
    );
  }
}
