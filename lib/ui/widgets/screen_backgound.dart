import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manger/ui/utils/assets_path.dart';

class ScreenBackGround extends StatelessWidget {
  const ScreenBackGround({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: SvgPicture.asset(
            AssetsPath.backgroundSvg,
            fit: BoxFit.cover,
          ),
        ),
        child,
      ],
    );
  }
}