import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: AnimatedScale(
        scale: _hover ? 1.1 : 1.0,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOut,
        child: ElevatedButton(onPressed: widget.onPressed, child: widget.child),
      ),
    );
  }
}
