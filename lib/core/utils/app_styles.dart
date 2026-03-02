import 'package:car_rental_dashboard/core/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleLight14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w300,
       fontFamily: 'Inter'
    );
  }

  static TextStyle styleLight16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w300,
       fontFamily: 'Inter'
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleRegular16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleRegular24(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w400,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleRegular32(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontWeight: FontWeight.w400,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleMedium14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleMedium18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w500,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleSemiBold32(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontWeight: FontWeight.w600,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleBold14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w700,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleBold26(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontWeight: FontWeight.w700,
             fontFamily: 'Inter'

    );
  }

  static TextStyle styleBold28(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      fontWeight: FontWeight.w700,
             fontFamily: 'Inter'

    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 600;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1400;
  }
}
