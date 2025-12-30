import 'dart:developer';

import 'package:portfolio_website/core/utils/constants/api_constants.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class UrlWebService {
  static Future<void> _launchInNewTab(String url) async {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
        webOnlyWindowName: '_blank',
      );
    } else {
      throw Exception('Could not launch $url');
    }
  }

  static Future<void> openWhatsApp(String phoneNumber) async {
    final cleanedPhoneNumber = phoneNumber.trim();
    final url = '${ApiConstants.whatsappUrl}$cleanedPhoneNumber';
    log('Opening WhatsApp for phone number: $url');
    await _launchInNewTab(url);
  }

  static Future<void> openLinkedIn(String profileUsername) async {
    if (profileUsername.isEmpty) return;
    final url = '${ApiConstants.linkedinUrl}$profileUsername';

    await _launchInNewTab(url);
  }

  static Future<void> openGitHub(String username) async {
    final url = '${ApiConstants.githubUrl}$username';

    await _launchInNewTab(url);
  }

  static Future<void> downloadCv(String driveLink) async {
    final link = '${ApiConstants.downloadCvGoogleDrive}$driveLink';
    return await _launchInNewTab(link);
  }
}
