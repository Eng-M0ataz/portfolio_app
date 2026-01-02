import 'package:flutter/material.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';

class CustomElevatedLoadingButton extends StatelessWidget {
  const CustomElevatedLoadingButton({
    super.key,
    required this.onPressed,
    required this.isLoading,
    required this.widget,
    this.loadingColor,
    this.textColor,
    this.containerColor,
    this.buttonHigh,
  });

  final void Function()? onPressed;
  final bool isLoading;
  final Widget widget;
  final Color? textColor;
  final Color? loadingColor;
  final Color? containerColor;
  final double? buttonHigh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        height: 38,
        width: isLoading ? 80 : null,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        child: isLoading
            ? Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(
                    AppSizes.borderRadiusFull,
                  ),
                  border: Border.all(color: AppColorsDark.grey_959),
                ),
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Theme(
                    data: ThemeData(
                      progressIndicatorTheme: ProgressIndicatorThemeData(
                        color: loadingColor ?? AppColorsDark.orange,
                      ),
                    ),
                    child: const CircularProgressIndicator(),
                  ),
                ),
              )
            : SizedBox(
                height: buttonHigh ?? 48,
                child: ElevatedButton(onPressed: onPressed, child: widget),
              ),
      ),
    );
  }
}
