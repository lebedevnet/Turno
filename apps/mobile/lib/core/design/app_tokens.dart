import 'package:flutter/widgets.dart';

class AppSpacing {
  const AppSpacing._();

  static const double xxSmall = 4;
  static const double xSmall = 8;
  static const double small = 12;
  static const double medium = 16;
  static const double large = 24;
  static const double xLarge = 32;
  static const double xxLarge = 40;
  static const double page = 20;
}

class AppRadius {
  const AppRadius._();

  static const double small = 16;
  static const double medium = 20;
  static const double large = 28;
  static const double pill = 999;
}

const EdgeInsets kPagePadding = EdgeInsets.fromLTRB(
  AppSpacing.page,
  AppSpacing.xLarge,
  AppSpacing.page,
  AppSpacing.xxLarge,
);
