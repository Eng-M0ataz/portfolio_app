import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';

abstract class DialogueUtils {
  static void showMessage({
    required BuildContext context,
    required String message,
    String? title,
    String? posActionName,
    Function? posAction,
    String? ngeActionName,
    Function? ngeAction,
  }) {
    List<Widget> actions = [];
    if (posActionName != null) {
      actions.add(
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            posAction?.call();
          },
          child: Text(
            posActionName,
            style: AppTextStyles.medium_16(
              context,
            ).copyWith(color: AppColorsDark.orange),
          ),
        ),
      );
    }
    if (ngeActionName != null) {
      actions.add(
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            ngeAction?.call();
          },
          child: Text(ngeActionName, style: AppTextStyles.medium_16(context)),
        ),
      );
    }

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColorsDark.black,
          shadowColor: AppColorsDark.orange,
          contentTextStyle: AppTextStyles.medium_16(
            context,
          ).copyWith(color: AppColorsDark.white),
          titleTextStyle: AppTextStyles.bold_24(
            context,
          ).copyWith(color: AppColorsDark.orange),
          actions: actions,
          content: Text(message),
          title: Text(title ?? ""),
        );
      },
    );
  }
}
