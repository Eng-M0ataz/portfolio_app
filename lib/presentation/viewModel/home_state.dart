import 'package:portfolio_website/core/errors/failure.dart';
import 'package:portfolio_website/domain/entity/portfolio_entity.dart';

class HomeState {
  const HomeState({this.isLoading = true, this.failure, this.profileData});

  final bool isLoading;
  final Failure? failure;
  final PortfolioEntity? profileData;

  HomeState copyWith({
    bool? isLoading,
    Failure? failure,
    PortfolioEntity? profileData,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      profileData: profileData ?? this.profileData,
    );
  }
}
