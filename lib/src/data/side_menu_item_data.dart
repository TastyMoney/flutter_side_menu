import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_side_menu/src/utils/constants.dart';

abstract class SideMenuItemData {
  const SideMenuItemData();
}

class SideMenuItemDataTile extends SideMenuItemData {
  const SideMenuItemDataTile({
    required this.isSelected,
    required this.onTap,
    this.isGradient =false,
    this.icon,
    this.title,
    this.titleStyle,
    this.selectedTitleStyle,
    this.tooltip,
    this.badgeContent,
    this.hasSelectedLine = true,
    this.selectedLineSize = const Size(
      Constants.itemSelectedLineWidth,
      Constants.itemSelectedLineHeight,
    ),
    this.itemHeight = Constants.itemHeight,
    this.margin = Constants.itemMargin,
    this.borderRadius,
    this.selectedIcon,
    this.radius=10.0,
    this.highlightSelectedColor = Constants.HighLightColor1,
    this.highlightSelectedColor2 = Constants.HighLightColor2,
    this.hoverColor,
    this.badgePosition,
    this.badgeStyle,
  })  : assert(itemHeight >= 0.0),
        assert(icon != null || title != null),
        super();

  final bool isSelected, hasSelectedLine, isGradient;
  final void Function() onTap;
  final Size selectedLineSize;
  final String? title;
  final TextStyle? titleStyle;
  final TextStyle? selectedTitleStyle;
  final String? tooltip;
  final Widget? badgeContent;
  final BadgePosition? badgePosition;
  final BadgeStyle? badgeStyle;
  final Widget? icon;
  final Widget? selectedIcon;
  final double itemHeight;
  final double? radius;
  final EdgeInsetsDirectional margin;
  final BorderRadiusGeometry? borderRadius;
  final Color? hoverColor,
      highlightSelectedColor,
      highlightSelectedColor2;
}

class SideMenuItemDataTitle extends SideMenuItemData {
  const SideMenuItemDataTitle({
    required this.title,
    this.titleStyle,
    this.textAlign,
    this.padding = Constants.itemMargin,
  }) : super();

  final String title;
  final TextStyle? titleStyle;
  final TextAlign? textAlign;
  final EdgeInsetsDirectional padding;
}

class SideMenuItemDataDivider extends SideMenuItemData {
  const SideMenuItemDataDivider({
    required this.divider,
    this.padding = Constants.itemMargin,
  }) : super();

  final Divider divider;
  final EdgeInsetsDirectional padding;
}
