// ignore_for_file: must_be_immutable

part of 'onehundredsixtysix_bloc.dart';

/// Represents the state of Onehundredsixtysix in the application.
class OnehundredsixtysixState extends Equatable {
  OnehundredsixtysixState({
    this.searchController,
    this.onehundredsixtysixModelObj,
  });

  TextEditingController? searchController;

  OnehundredsixtysixModel? onehundredsixtysixModelObj;

  @override
  List<Object?> get props => [
        searchController,
        onehundredsixtysixModelObj,
      ];

  OnehundredsixtysixState copyWith({
    TextEditingController? searchController,
    OnehundredsixtysixModel? onehundredsixtysixModelObj,
  }) {
    return OnehundredsixtysixState(
      searchController: searchController ?? this.searchController,
      onehundredsixtysixModelObj:
          onehundredsixtysixModelObj ?? this.onehundredsixtysixModelObj,
    );
  }
}
