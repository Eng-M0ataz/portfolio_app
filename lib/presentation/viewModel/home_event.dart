import 'package:portfolio_website/data/model/input_model/contact_request.dart';

sealed class HomeEvent {}

class FetchHomeDataEvent extends HomeEvent {
  FetchHomeDataEvent({required this.path});

  final String path;
}

class OpenWhatsAppEvent extends HomeEvent {}

class OpenLinkedinEvent extends HomeEvent {}

class OpenGithubEvent extends HomeEvent {}

class DownloadCvEvent extends HomeEvent {}

class SendClientRequestEvent extends HomeEvent {
  SendClientRequestEvent({required this.contactRequest, required this.path});

  final ContactRequest contactRequest;
  final String path;
}
