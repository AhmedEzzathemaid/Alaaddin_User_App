// ignore_for_file: must_be_immutable

part of 'twentysix_bloc.dart';

/// Represents the state of Twentysix in the application.
class TwentysixState extends Equatable {
  TwentysixState({
    this.sortBy = "",
    this.twentysixModelObj,
  });

  TwentysixModel? twentysixModelObj;

  String sortBy;

  @override
  List<Object?> get props => [
        sortBy,
        twentysixModelObj,
      ];

  TwentysixState copyWith({
    String? sortBy,
    TwentysixModel? twentysixModelObj,
  }) {
    return TwentysixState(
      sortBy: sortBy ?? this.sortBy,
      twentysixModelObj: twentysixModelObj ?? this.twentysixModelObj,
    );
  }
}
