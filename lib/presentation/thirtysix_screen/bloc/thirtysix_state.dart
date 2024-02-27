// ignore_for_file: must_be_immutable

part of 'thirtysix_bloc.dart';

/// Represents the state of Thirtysix in the application.
class ThirtysixState extends Equatable {
  ThirtysixState({
    this.searchController,
    this.thirtysixModelObj,
  });

  TextEditingController? searchController;

  ThirtysixModel? thirtysixModelObj;

  @override
  List<Object?> get props => [
        searchController,
        thirtysixModelObj,
      ];

  ThirtysixState copyWith({
    TextEditingController? searchController,
    ThirtysixModel? thirtysixModelObj,
  }) {
    return ThirtysixState(
      searchController: searchController ?? this.searchController,
      thirtysixModelObj: thirtysixModelObj ?? this.thirtysixModelObj,
    );
  }
}
