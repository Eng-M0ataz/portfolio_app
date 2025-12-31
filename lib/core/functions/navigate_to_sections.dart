import 'package:flutter/material.dart';
import 'package:portfolio_website/core/functions/scroll_to_section.dart';
import 'package:portfolio_website/core/helpers/responsive_helper.dart';
import 'package:portfolio_website/core/helpers/routing_extensions.dart';

void navigateToSections({
  required int index,
  required BuildContext context,
  required List<GlobalKey> globalKeyList,
}) {
  if(context.isMobile) context.pop();
  scrollToSection(globalKeyList[index]);
}
