import 'package:flutter/material.dart';
import 'package:portfolio_website/presentation/widgets/services_grid_view_item.dart';

class ServicesGridView extends StatelessWidget {
  const ServicesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        // childAspectRatio: 399 / 322,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => ServicesGridViewItemm(),
    );
  }
}
