// ignore_for_file: must_be_immutable

part of 'seventeen_bloc.dart';

/// Represents the state of Seventeen in the application.
class SeventeenState extends Equatable {
  SeventeenState({
    this.searchController,
    this.seventeenModelObj,
  });

  TextEditingController? searchController;

  SeventeenModel? seventeenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        seventeenModelObj,
      ];

  SeventeenState copyWith({
    TextEditingController? searchController,
    SeventeenModel? seventeenModelObj,
  }) {
    return SeventeenState(
      searchController: searchController ?? this.searchController,
      seventeenModelObj: seventeenModelObj ?? this.seventeenModelObj,
    );
  }
}
