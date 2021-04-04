import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaBtn extends StatelessWidget {
  final String iconPath;
  final Function onTap;
  const SocialMediaBtn({
    Key key,
    this.iconPath,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(iconPath),
    );
  }
}
