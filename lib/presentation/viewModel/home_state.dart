import 'package:portfolio_website/core/errors/failure.dart';
import 'package:portfolio_website/domain/entity/portfolio_entity.dart';

class HomeState {
  const HomeState({
    this.isLoading = true,
    this.failure,
    this.profileData,
    this.isSuccess = false,
  });

  final bool isLoading;
  final Failure? failure;
  final PortfolioEntity? profileData;
  final bool isSuccess;

  HomeState copyWith({
    bool? isLoading,
    Failure? failure,
    PortfolioEntity? profileData,
    bool? isSuccess,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      profileData: profileData ?? this.profileData,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
