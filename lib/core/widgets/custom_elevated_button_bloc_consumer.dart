import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/config/theme/app_colors.dart';
import 'package:portfolio_website/core/enum/request_status.dart';
import 'package:portfolio_website/core/helpers/app_texts_style.dart';
import 'package:portfolio_website/core/helpers/dialogue_utils.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';
import 'package:portfolio_website/core/utils/constants/api_constants.dart';
import 'package:portfolio_website/core/widgets/custom_elevated_loading_button.dart';
import 'package:portfolio_website/data/model/input_model/contact_request.dart';
import 'package:portfolio_website/presentation/viewModel/home_event.dart';
import 'package:portfolio_website/presentation/viewModel/home_state.dart';
import 'package:portfolio_website/presentation/viewModel/home_view_model.dart';

class CustomElevatedButtonBlocConsumer extends StatelessWidget {
  const CustomElevatedButtonBlocConsumer({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.serviceController,
    required this.timelineController,
    required this.countryController,
    required this.projectDetailsController,
    required this.formKey,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController serviceController;
  final TextEditingController timelineController;
  final TextEditingController countryController;
  final TextEditingController projectDetailsController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeViewModel, HomeState>(
      bloc: context.read<HomeViewModel>(),
      listenWhen: (p, c) => p.clientRequestStatus != c.clientRequestStatus,
      listener: (context, state) {
        if (state.clientRequestStatus == RequestStatus.failure) {
          DialogueUtils.showMessage(
            context: context,
            title: 'Failure',
            message: state.clientRequestFailure!.errorMessage,
            posActionName: LocaleKeys.ok.tr(),
          );
          return;
        }
        if (state.clientRequestStatus == RequestStatus.success) {
          DialogueUtils.showMessage(
            context: context,
            title: 'Success',
            message: LocaleKeys.message_sent_successfully.tr(),
            posActionName: LocaleKeys.ok.tr(),
          );
        }
      },
      builder: (context, state) {
        return CustomElevatedLoadingButton(
          widget: Text(
            LocaleKeys.send.tr(),
            style: AppTextStyles.bold_16(
              context,
            ).copyWith(color: AppColorsDark.grey_959),
          ),
          isLoading: state.clientRequestStatus == RequestStatus.loading,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              context.read<HomeViewModel>().doIntent(
                SendClientRequestEvent(
                  path: ApiConstants.contactMeRequest,
                  contactRequest: ContactRequest(
                    name: nameController.text.trim(),
                    email: emailController.text.trim(),
                    phone: phoneController.text.trim(),
                    service: serviceController.text.trim(),
                    timeline: timelineController.text.trim(),
                    country: countryController.text.trim(),
                    details: projectDetailsController.text.trim(),
                  ),
                ),
              );
            }
          },
        );
      },
    );
  }
}
