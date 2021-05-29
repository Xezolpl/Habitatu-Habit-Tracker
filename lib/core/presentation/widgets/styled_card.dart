import 'package:flutter/material.dart';
import 'package:habitatu/core/presentation/constants.dart';

class StyledCard extends StatelessWidget {
  ///Widget to be passed as a container's child
  final Widget child;

  ///Customize border radius
  final BorderRadius? borderRadius;

  ///Default white
  final Color backgroundColor;

  const StyledCard(
      {Key? key,
      this.backgroundColor = AppColors.white,
      this.borderRadius,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
