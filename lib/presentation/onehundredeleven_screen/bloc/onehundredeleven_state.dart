// ignore_for_file: must_be_immutable

part of 'onehundredeleven_bloc.dart';

/// Represents the state of Onehundredeleven in the application.
class OnehundredelevenState extends Equatable {
  OnehundredelevenState({
    this.searchController,
    this.onehundredelevenModelObj,
  });

  TextEditingController? searchController;

  OnehundredelevenModel? onehundredelevenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        onehundredelevenModelObj,
      ];

  OnehundredelevenState copyWith({
    TextEditingController? searchController,
    OnehundredelevenModel? onehundredelevenModelObj,
  }) {
    return OnehundredelevenState(
      searchController: searchController ?? this.searchController,
      onehundredelevenModelObj:
          onehundredelevenModelObj ?? this.onehundredelevenModelObj,
    );
  }
}
