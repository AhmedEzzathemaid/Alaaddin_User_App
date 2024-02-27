// ignore_for_file: must_be_immutable

part of 'six_bloc.dart';

/// Represents the state of Six in the application.
class SixState extends Equatable {
  SixState({
    this.searchController,
    this.sliderIndex = 0,
    this.sixModelObj,
  });

  TextEditingController? searchController;

  SixModel? sixModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        sixModelObj,
      ];

  SixState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    SixModel? sixModelObj,
  }) {
    return SixState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      sixModelObj: sixModelObj ?? this.sixModelObj,
    );
  }
}
