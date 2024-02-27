// ignore_for_file: must_be_immutable

part of 'onehundredfortysix_bloc.dart';

/// Represents the state of Onehundredfortysix in the application.
class OnehundredfortysixState extends Equatable {
  OnehundredfortysixState({
    this.searchController,
    this.onehundredfortysixModelObj,
  });

  TextEditingController? searchController;

  OnehundredfortysixModel? onehundredfortysixModelObj;

  @override
  List<Object?> get props => [
        searchController,
        onehundredfortysixModelObj,
      ];

  OnehundredfortysixState copyWith({
    TextEditingController? searchController,
    OnehundredfortysixModel? onehundredfortysixModelObj,
  }) {
    return OnehundredfortysixState(
      searchController: searchController ?? this.searchController,
      onehundredfortysixModelObj:
          onehundredfortysixModelObj ?? this.onehundredfortysixModelObj,
    );
  }
}
