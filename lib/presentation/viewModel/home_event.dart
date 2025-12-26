import 'package:portfolio_website/data/model/input_model.dart';

sealed class HomeEvent {}

class FetchHomeDataEvent extends HomeEvent {
  FetchHomeDataEvent({required this.inputModel});

  final InputModel inputModel;
}

class OpenWhatsAppEvent extends HomeEvent {}

class OpenLinkedinEvent extends HomeEvent {}

class OpenGithubEvent extends HomeEvent {}

class DownloadCvEvent extends HomeEvent {}
