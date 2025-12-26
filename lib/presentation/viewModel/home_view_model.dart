import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_website/core/functions/api_results.dart';
import 'package:portfolio_website/core/services/url_web_service.dart';
import 'package:portfolio_website/data/model/input_model.dart';
import 'package:portfolio_website/domain/entity/profile_data_entity.dart';
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
        await _fetchHomeData(event.inputModel);
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
    await UrlWebService.openWhatsApp(state.profileData!.socialLinks!.whatsapp!);
  }

  Future<void> _openLinkedin() async {
    await UrlWebService.openLinkedIn(state.profileData!.socialLinks!.linkedin!);
  }

  Future<void> _openGithub() async {
    await UrlWebService.openGitHub(state.profileData!.socialLinks!.github!);
  }

  Future<void> _downloadCv() async {
    await UrlWebService.downloadCv(state.profileData!.cvUrl!);
  }

  Future<void> _fetchHomeData(InputModel inputModel) async {
    final ApiResult<ProfileDataEntity> result = await _homeRepo
        .fetchDataWithSort(inputModel: inputModel);

    switch (result) {
      case ApiSuccessResult<ProfileDataEntity>():
        emit(state.copyWith(isLoading: false, profileData: result.data));

        break;
      case ApiErrorResult<ProfileDataEntity>():
        emit(state.copyWith(isLoading: false, failure: result.failure));
        break;
    }
  }
}
