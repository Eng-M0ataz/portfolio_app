import 'package:easy_localization/easy_localization.dart';
import 'package:portfolio_website/core/helpers/regex.dart';
import 'package:portfolio_website/core/localization/locale_keys.g.dart';

abstract class Validations {
  static String? validateName(String? name) {
    if (name!.isEmpty) {
      return LocaleKeys.validation_name_required.tr();
    } else if (!AppRegExp.isNameValid(name)) {
      return LocaleKeys.validation_name_invalid.tr();
    }
    return null;
  }

  static String? validateEmail(String? email) {
    if (email!.isEmpty) {
      return LocaleKeys.validation_email_required.tr();
    } else if (!AppRegExp.isEmailValid(email)) {
      return LocaleKeys.validation_email_invalid.tr();
    }
    return null;
  }

  static String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber!.isEmpty) {
      return LocaleKeys.validation_phone_required.tr();
    } else if (!AppRegExp.isPhoneNumberValid(phoneNumber)) {
      return LocaleKeys.validation_phone_invalid.tr();
    }
    return null;
  }

  static String? validateTimeline(String? timeline) {
    if (timeline == null || timeline.trim().isEmpty) {
      return LocaleKeys.validation_timeline_required.tr();
    }
    return null;
  }

  static String? validateCountry(String? country) {
    if (country == null || country.trim().isEmpty) {
      return LocaleKeys.validation_country_required.tr();
    }
    return null;
  }

  static String? validateService(String? service) {
    if (service == null || service.trim().isEmpty) {
      return LocaleKeys.validation_service_required.tr();
    }
    return null;
  }

  static String? validateProjectDetails(String? details) {
    if (details == null || details.trim().isEmpty) {
      return LocaleKeys.validation_project_details_required.tr();
    } else if (details.trim().length < 20) {
      return LocaleKeys.validation_project_details_min_length.tr();
    }
    return null;
  }
}
