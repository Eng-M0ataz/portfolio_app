sealed class HomeEvent {}

class FetchHomeDataEvent extends HomeEvent {
  FetchHomeDataEvent({required this.path});

  final String path;
}

class OpenWhatsAppEvent extends HomeEvent {}

class OpenLinkedinEvent extends HomeEvent {}

class OpenGithubEvent extends HomeEvent {}

class DownloadCvEvent extends HomeEvent {}
