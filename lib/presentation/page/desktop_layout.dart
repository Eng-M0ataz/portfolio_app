import 'package:flutter/material.dart';
import 'package:portfolio_website/presentation/widgets/web/desktop_view_body.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DesktopViewBody());
  }
}
