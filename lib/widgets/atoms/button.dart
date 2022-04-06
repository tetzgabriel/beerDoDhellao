import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Text label;
  final VoidCallback? onPressed;
  final bool isPrimary;

  const Button({
    Key? key,
    required this.label,
    required this.onPressed,
    this.isPrimary = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.resolveWith(
            (Set<MaterialState> states) => _getBgColor(isPrimary)),
      ),
      onPressed: onPressed,
      child: label,
    );
  }

  Color _getBgColor(bool isPrimary) =>
      isPrimary ? const Color(0xffffd000) : const Color(0x00ffffff);
}
