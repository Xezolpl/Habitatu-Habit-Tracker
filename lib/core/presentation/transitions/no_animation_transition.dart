import 'package:flutter/material.dart';

class NoAnimationPageRoute extends MaterialPageRoute {
  NoAnimationPageRoute({required builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration();
}
