import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';

class CustomButtonWidget extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final TextStyle? customTextStyle;
  final Color? primaryColor;
  final Color? outlinedColor;
  final Color? splashColor;
  final Color? shadowColor;
  final Color? textColor;
  final double? minimumWidth;
  final double? minimumHeight;
  final EdgeInsets? padding;
  final Widget? child;
  final double elevation;
  final double? borderRadius;
  final MaterialTapTargetSize tapTargetSize;

  const CustomButtonWidget({
    Key? key,
    this.onTap,
    this.elevation = 0,
    this.borderRadius,
    required this.text,
    this.customTextStyle,
    this.primaryColor,
    this.splashColor,
    this.textColor = Colors.white,
    this.minimumWidth,
    this.minimumHeight,
    this.padding,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.shadowColor,
  })  : child = null,
        outlinedColor = null,
        super(key: key);

  const CustomButtonWidget.outlined({
    Key? key,
    this.onTap,
    this.elevation = 0,
    this.customTextStyle,
    this.borderRadius,
    this.shadowColor,
    this.textColor,
    required this.text,
    this.minimumHeight,
    this.primaryColor,
    this.outlinedColor,
    this.splashColor,
    this.minimumWidth,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.padding,
  })  : child = null,
        super(key: key);

  const CustomButtonWidget.textOnly({
    Key? key,
    this.onTap,
    this.elevation = 0,
    this.customTextStyle,
    this.borderRadius,
    this.shadowColor,
    this.textColor = Colors.white,
    required this.text,
    this.minimumHeight,
    this.primaryColor = Colors.black,
    this.outlinedColor = Colors.transparent,
    this.splashColor = Colors.white,
    this.minimumWidth,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.padding,
  })  : child = null,
        super(key: key);

  const CustomButtonWidget.child({
    Key? key,
    this.onTap,
    this.elevation = 4,
    this.borderRadius,
    required this.child,
    this.minimumHeight,
    this.shadowColor,
    this.primaryColor,
    this.splashColor,
    this.minimumWidth,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.padding,
  })  : text = '',
        textColor = Colors.black,
        customTextStyle = null,
        outlinedColor = null,
        super(key: key);

  const CustomButtonWidget.outlinedChild({
    Key? key,
    this.onTap,
    this.elevation = 4,
    this.borderRadius,
    required this.child,
    this.minimumHeight,
    this.primaryColor,
    this.outlinedColor,
    this.splashColor,
    this.minimumWidth,
    this.shadowColor,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.padding,
  })  : text = '',
        textColor = Colors.black,
        customTextStyle = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        shadowColor: shadowColor ?? Colors.black54,
        backgroundColor: primaryColor,
        foregroundColor: splashColor,
        tapTargetSize: tapTargetSize,
        minimumSize: Size(
          minimumWidth ?? 100.w,
          minimumHeight ?? 0,
        ),
        padding: padding ??
            EdgeInsets.symmetric(
              vertical: 16.w,
              horizontal: 16.w,
            ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius ?? 4.r,
          ),
          side: outlinedColor == null
              ? BorderSide.none
              : BorderSide(
                  color: outlinedColor!,
                ),
        ),
      ),
      child: child ??
          Text(
            text.tr,
            textAlign: TextAlign.center,
            style: customTextStyle ?? AppTextStyles.body2MediumAll,
          ),
    );
  }
}
