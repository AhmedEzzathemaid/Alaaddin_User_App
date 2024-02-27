// ignore_for_file: must_be_immutable

part of 'forty_bloc.dart';

/// Represents the state of Forty in the application.
class FortyState extends Equatable {
  FortyState({
    this.searchController,
    this.fortyModelObj,
  });

  TextEditingController? searchController;

  FortyModel? fortyModelObj;

  @override
  List<Object?> get props => [
        searchController,
        fortyModelObj,
      ];

  FortyState copyWith({
    TextEditingController? searchController,
    FortyModel? fortyModelObj,
  }) {
    return FortyState(
      searchController: searchController ?? this.searchController,
      fortyModelObj: fortyModelObj ?? this.fortyModelObj,
    );
  }
}
