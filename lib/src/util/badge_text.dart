import 'package:flutter/material.dart';

class BadgeText extends StatelessWidget {
  const BadgeText({
    Key? key,
    this.count,
    this.right,
    this.show,
  }) : super(key: key);

  // counter showed in notification badge
  // set to 0 will hide notification badge
  final int? count;

  final double? right;

  final bool? show;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: 0,
      child: show!
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              constraints: const BoxConstraints(
                minWidth: 15,
                minHeight: 12,
              ),
              child: Text(
                count! > 10 ? '10+' : '$count',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            )
          : Container(),
    );
  }
}
