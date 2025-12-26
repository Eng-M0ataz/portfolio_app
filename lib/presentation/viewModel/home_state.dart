import 'package:portfolio_website/core/errors/failure.dart';
import 'package:portfolio_website/domain/entity/profile_data_entity.dart';

class HomeState {
  const HomeState({this.isLoading = true, this.failure, this.profileData});

  final bool isLoading;
  final Failure? failure;
  final ProfileDataEntity? profileData;

  HomeState copyWith({
    bool? isLoading,
    Failure? failure,
    ProfileDataEntity? profileData,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      profileData: profileData ?? this.profileData,
    );
  }
}
