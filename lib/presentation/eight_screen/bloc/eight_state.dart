// ignore_for_file: must_be_immutable

part of 'eight_bloc.dart';

/// Represents the state of Eight in the application.
class EightState extends Equatable {
  EightState({
    this.searchController,
    this.sliderIndex = 0,
    this.eightModelObj,
  });

  TextEditingController? searchController;

  EightModel? eightModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        eightModelObj,
      ];

  EightState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    EightModel? eightModelObj,
  }) {
    return EightState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      eightModelObj: eightModelObj ?? this.eightModelObj,
    );
  }
}
