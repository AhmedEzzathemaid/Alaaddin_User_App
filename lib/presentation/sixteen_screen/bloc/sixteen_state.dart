// ignore_for_file: must_be_immutable

part of 'sixteen_bloc.dart';

/// Represents the state of Sixteen in the application.
class SixteenState extends Equatable {
  SixteenState({
    this.searchController,
    this.sixteenModelObj,
  });

  TextEditingController? searchController;

  SixteenModel? sixteenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        sixteenModelObj,
      ];

  SixteenState copyWith({
    TextEditingController? searchController,
    SixteenModel? sixteenModelObj,
  }) {
    return SixteenState(
      searchController: searchController ?? this.searchController,
      sixteenModelObj: sixteenModelObj ?? this.sixteenModelObj,
    );
  }
}
