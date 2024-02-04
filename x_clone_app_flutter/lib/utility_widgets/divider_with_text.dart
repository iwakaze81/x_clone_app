import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  final Widget text;
  final double? indent;
  final double? endIndent;

  const DividerWithText({
    super.key,
    required this.text,
    this.indent,
    this.endIndent,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Divider(
          indent: indent,
          endIndent: endIndent,
        ),
        Builder(
          builder: (context) {
            return Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: text,
            );
          },
        ),
      ],
    );
  }
}
