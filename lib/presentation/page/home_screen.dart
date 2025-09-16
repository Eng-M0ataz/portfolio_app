import 'package:flutter/material.dart';
import 'package:portfolio_website/presentation/widgets/home_screen_body.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: ResponsiveScaledBox(
        width: ResponsiveValue<double>(
          context,
          conditionalValues: [
            // 📱 Mobile صغير (0–450px)
            Condition.between(start: 0, end: 450, value: 375),

            // 📱 Mobile كبير (451–768px)
            Condition.between(start: 451, end: 768, value: 600),

            // 📲 Tablet (769–1024px)
            Condition.between(start: 769, end: 1024, value: 1024),

            // 💻 Laptop صغير (1025–1366px)
            Condition.between(start: 1025, end: 1366, value: 1366),

            // 💻 Desktop متوسط (1367–1920px)
            Condition.between(start: 1367, end: 1920, value: 1600),

            // 🖥️ Desktop كبير (1921px+)
            Condition.between(start: 1921, end: 9999, value: 1920),
          ],
        ).value,
        child: HomeScreenBody(),
      ),
    );
  }
}
