import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_website/core/functions/api_results.dart';
import 'package:portfolio_website/core/services/url_web_service.dart';
import 'package:portfolio_website/domain/entity/portfolio_entity.dart';
import 'package:portfolio_website/domain/repository/home_repo.dart';

import 'home_event.dart';
import 'home_state.dart';

@lazySingleton
class HomeViewModel extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeViewModel(this._homeRepo) : super(const HomeState());

  Future<void> doIntent(HomeEvent event) async {
    switch (event) {
      case FetchHomeDataEvent():
        await _fetchHomeData(event.path);
        break;
      case OpenWhatsAppEvent():
        await _openWhatsApp();
        break;
      case OpenLinkedinEvent():
        await _openLinkedin();
        break;
      case OpenGithubEvent():
        await _openGithub();
        break;
      case DownloadCvEvent():
        await _downloadCv();
        break;
    }
  }

  Future<void> _openWhatsApp() async {
    final number = state.profileData?.personalInfo.whatsappNumber ?? '';
    await UrlWebService.openWhatsApp(number);
  }

  Future<void> _openLinkedin() async {
    final link = state.profileData?.personalInfo.linkedinLink ?? '';
    await UrlWebService.openLinkedIn(link);
  }

  Future<void> _openGithub() async {
    final link = state.profileData?.personalInfo.githubLink ?? '';
    await UrlWebService.openGitHub(link);
  }

  Future<void> _downloadCv() async {
    final link = state.profileData?.personalInfo.cvLink ?? '';
    await UrlWebService.downloadCv(link);
  }

  Future<void> _fetchHomeData(String path) async {
    final ApiResult<PortfolioEntity> result = await _homeRepo.fetchDataWithSort(
      path: path,
    );

    switch (result) {
      case ApiSuccessResult<PortfolioEntity>():
        emit(state.copyWith(isLoading: false, profileData: result.data));

        break;
      case ApiErrorResult<PortfolioEntity>():
        emit(state.copyWith(isLoading: false, failure: result.failure));
        break;
    }
  }
}
