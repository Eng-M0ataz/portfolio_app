import 'package:equatable/equatable.dart';
import 'package:portfolio_website/core/errors/failure.dart';
import 'package:portfolio_website/domain/entity/portfolio_entity.dart';
import 'package:portfolio_website/domain/entity/project_entity.dart';

class HomeState extends Equatable {
  const HomeState({
    this.isLoading = true,
    this.failure,
    this.profileData,
    this.isSuccess = false,
    this.filteredProjects = const [],
    this.isClientRequestLoading = false,
    this.clientRequestFailure,
    this.isClientRequestSuccess = false,
  });

  final bool isLoading;
  final Failure? failure;
  final PortfolioEntity? profileData;
  final bool isSuccess;
  final List<ProjectEntity> filteredProjects;
  final bool isClientRequestLoading;
  final Failure? clientRequestFailure;
  final bool isClientRequestSuccess;

  HomeState copyWith({
    bool? isLoading,
    Failure? failure,
    PortfolioEntity? profileData,
    bool? isSuccess,
    List<ProjectEntity>? filteredProjects,
    bool? isClientRequestLoading,
    Failure? clientRequestFailure,
    bool? isClientRequestSuccess,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      profileData: profileData ?? this.profileData,
      isSuccess: isSuccess ?? this.isSuccess,
      filteredProjects: filteredProjects ?? this.filteredProjects,
      isClientRequestLoading:
          isClientRequestLoading ?? this.isClientRequestLoading,
      clientRequestFailure: clientRequestFailure ?? this.clientRequestFailure,
      isClientRequestSuccess:
          isClientRequestSuccess ?? this.isClientRequestSuccess,
    );
  }

  @override
  List<Object?> get props => [
    isLoading,
    failure,
    profileData,
    isSuccess,
    filteredProjects,
    isClientRequestLoading,
    clientRequestFailure,
    isClientRequestSuccess,
  ];
}
