import 'package:portfolio_website/data/model/input_model/contact_request.dart';

sealed class HomeEvent {}

class FetchHomeDataEvent extends HomeEvent {
  FetchHomeDataEvent({required this.path});

  final String path;
}

class OpenWhatsAppEvent extends HomeEvent {}

class OpenUrlEvent extends HomeEvent {
  OpenUrlEvent({required this.url});
  final String url;
}

class DownloadCvEvent extends HomeEvent {}

class SendClientRequestEvent extends HomeEvent {
  SendClientRequestEvent({required this.contactRequest, required this.path});

  final ContactRequest contactRequest;
  final String path;
}

class FilterProjectsEvent extends HomeEvent {
  FilterProjectsEvent({required this.category});

  final String category;
}

class OpenEmailEvent extends HomeEvent {
  OpenEmailEvent({required this.email});
  final String email;
}
