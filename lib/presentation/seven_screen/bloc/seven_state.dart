// ignore_for_file: must_be_immutable

part of 'seven_bloc.dart';

/// Represents the state of Seven in the application.
class SevenState extends Equatable {
  SevenState({
    this.searchController,
    this.sliderIndex = 0,
    this.sevenModelObj,
  });

  TextEditingController? searchController;

  SevenModel? sevenModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        sevenModelObj,
      ];

  SevenState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    SevenModel? sevenModelObj,
  }) {
    return SevenState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      sevenModelObj: sevenModelObj ?? this.sevenModelObj,
    );
  }
}
