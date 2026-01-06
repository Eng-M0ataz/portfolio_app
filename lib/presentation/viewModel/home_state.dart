import 'package:equatable/equatable.dart';
import 'package:portfolio_website/core/enum/request_status.dart';
import 'package:portfolio_website/core/errors/failure.dart';
import 'package:portfolio_website/domain/entity/portfolio_entity.dart';
import 'package:portfolio_website/domain/entity/project_entity.dart';

class HomeState extends Equatable {
  const HomeState({
    this.fetchStatus = RequestStatus.loading,
    this.fetchFailure,
    this.profileData,
    this.filteredProjects = const [],
    this.clientRequestStatus = RequestStatus.idle,
    this.clientRequestFailure,
  });

  final RequestStatus fetchStatus;
  final Failure? fetchFailure;
  final PortfolioEntity? profileData;
  final List<ProjectEntity> filteredProjects;

  final RequestStatus clientRequestStatus;
  final Failure? clientRequestFailure;

  HomeState copyWith({
    RequestStatus? fetchStatus,
    Failure? fetchFailure,
    PortfolioEntity? profileData,
    List<ProjectEntity>? filteredProjects,
    RequestStatus? clientRequestStatus,
    Failure? clientRequestFailure,
  }) {
    return HomeState(
      fetchStatus: fetchStatus ?? this.fetchStatus,
      fetchFailure: fetchFailure ?? this.fetchFailure,
      profileData: profileData ?? this.profileData,
      filteredProjects: filteredProjects ?? this.filteredProjects,
      clientRequestStatus: clientRequestStatus ?? this.clientRequestStatus,
      clientRequestFailure: clientRequestFailure ?? this.clientRequestFailure,
    );
  }

  @override
  List<Object?> get props => [
    fetchStatus,
    fetchFailure,
    profileData,
    filteredProjects,
    clientRequestStatus,
    clientRequestFailure,
  ];
}
