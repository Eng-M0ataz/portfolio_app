import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_website/core/functions/api_results.dart';
import 'package:portfolio_website/core/services/url_web_service.dart';
import 'package:portfolio_website/data/model/input_model/contact_request.dart';
import 'package:portfolio_website/domain/entity/portfolio_entity.dart';
import 'package:portfolio_website/domain/entity/project_entity.dart';
import 'package:portfolio_website/domain/repository/home_repo.dart';
import 'package:portfolio_website/presentation/viewModel/home_event.dart';
import 'package:portfolio_website/presentation/viewModel/home_state.dart';

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

      case DownloadCvEvent():
        await _downloadCv();
        break;
      case SendClientRequestEvent():
        await _sendClientRequest(
          contactRequest: event.contactRequest,
          path: event.path,
        );
        break;
      case OpenUrlEvent():
        await _openUrl(url: event.url);
        break;

      case FilterProjectsEvent():
        filterProjects(category: event.category);
        break;
      case OpenEmailEvent():
        await _openEmail(email: event.email);
        break;

    }

  }

  Future<void> _openUrl({required String url}) async {
    await UrlWebService.openUrl(url);
  }

  Future<void> _openEmail({required String email}) async {
    await UrlWebService.openEmail(email);
  }

  Future<void> _sendClientRequest({
    required ContactRequest contactRequest,
    required String path,
  }) async {
    emit(state.copyWith(isClientRequestLoading: true,isClientRequestSuccess: false));
    final ApiResult<void> result = await _homeRepo.sendClientRequest(
      path: path,
      contactRequest: contactRequest,
    );
    switch (result) {
      case ApiSuccessResult<void>():
        emit(state.copyWith(isClientRequestLoading: false, isClientRequestSuccess: true,));
        break;
      case ApiErrorResult<void>():
        emit(
          state.copyWith(
            isClientRequestLoading: false,
            clientRequestFailure: result.failure,

          ),
        );
    }
  }

  Future<void> _openWhatsApp() async {
    final number = state.profileData!.personalInfo.whatsappNumber;
    await UrlWebService.openWhatsApp(number);
  }

  Future<void> _downloadCv() async {
    final link = state.profileData!.personalInfo.cvLink;
    await UrlWebService.downloadCv(link);
  }

  Future<void> _fetchHomeData(String path) async {
    final ApiResult<PortfolioEntity> result = await _homeRepo.fetchDataWithSort(
      path: path,
    );

    switch (result) {
      case ApiSuccessResult<PortfolioEntity>():
        emit(
          state.copyWith(
            isLoading: false,
            profileData: result.data,
            filteredProjects: result.data.projects,
          ),
        );

        break;
      case ApiErrorResult<PortfolioEntity>():
        emit(state.copyWith(isLoading: false, failure: result.failure));
        break;
    }
  }

  void filterProjects({required String category}) {
    final projects = state.profileData!.projects;
    final cat = category.trim().toLowerCase();

    final List<ProjectEntity> filtered = (cat == 'all')
        ? projects
        : projects.where((project) {
            final pCat = project.category.trim().toLowerCase();
            return pCat.contains(cat);
          }).toList();

    emit(state.copyWith(filteredProjects: filtered));
  }


}
