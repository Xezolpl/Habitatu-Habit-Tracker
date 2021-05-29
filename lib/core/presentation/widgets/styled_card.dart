import 'package:flutter/material.dart';
import 'package:habitatu/core/presentation/constants.dart';

class StyledCard extends StatelessWidget {
  ///Default all: 8.0
  final EdgeInsets padding;

  ///Default horizontal: 8.0, vertical: 4.0
  final EdgeInsets margin;

  ///Widget to be passed as a container's child
  final Widget child;

  ///Customize border radius
  final BorderRadius? borderRadius;

  ///Default white
  final Color backgroundColor;

  const StyledCard(
      {Key? key,
      this.padding = const EdgeInsets.all(8.0),
      this.margin = const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      this.backgroundColor = AppColors.white,
      this.borderRadius,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          boxShadow: [
            BoxShadow(blurRadius: 5, color: AppColors.black.withOpacity(0.13))
          ],
          border: Border.all(color: const Color(0xffD7D7D7), width: 0.5),
          borderRadius: borderRadius ?? BorderRadius.circular(6)),
      child: child,
    );
  }
}
