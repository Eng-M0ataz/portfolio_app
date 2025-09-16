import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/app_assets.dart';
import 'package:portfolio_website/core/utils/constants/sizes.dart';
import 'package:portfolio_website/core/widgets/connection_widget.dart';
import 'package:portfolio_website/presentation/widgets/infro_custom_widget.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.assetsImagesVector, fit: BoxFit.cover),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(LocaleKeys.hi.tr()),
            Text(LocaleKeys.my_name.tr()),
            SizedBox(height: AppSizes.spaceBetweenItems_24),
            SvgPicture.asset(Assets.assetsImagesFlutterDev),
            SizedBox(height: AppSizes.spaceBetweenItems_16),
            Row(
              spacing: AppSizes.spaceBetweenItems_24,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(LocaleKeys.hire_me.tr()),
                ),
                Theme(
                  data: ThemeData(
                    elevatedButtonTheme: ElevatedButtonThemeData(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.paddingXl_32,
                          vertical: AppSizes.paddingMd_16,
                        ),
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: AppColorsDark.grey_959,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(
                            AppSizes.borderRadiusMd_8,
                          ),
                        ),
                      ),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      LocaleKeys.download_cv.tr(),
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: AppColorsDark.grey_959,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSizes.spaceBetweenItems_16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConectionWidget(
                  icon: FontAwesomeIcons.linkedin,
                  onPressed: () {},
                ),
                const SizedBox(width: AppSizes.spaceBetweenItems_16),
                ConectionWidget(
                  icon: FontAwesomeIcons.github,
                  onPressed: () {},
                ),
                const SizedBox(width: AppSizes.spaceBetweenItems_16),
                ConectionWidget(
                  icon: FontAwesomeIcons.whatsapp,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: AppSizes.spaceBetweenItems_50),
            InfoCustomWidget(),
          ],
        ),
      ],
    );
  }
}
