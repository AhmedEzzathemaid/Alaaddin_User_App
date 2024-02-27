// ignore_for_file: must_be_immutable

part of 'fiftysix_bloc.dart';

/// Represents the state of Fiftysix in the application.
class FiftysixState extends Equatable {
  FiftysixState({this.fiftysixModelObj});

  FiftysixModel? fiftysixModelObj;

  @override
  List<Object?> get props => [
        fiftysixModelObj,
      ];

  FiftysixState copyWith({FiftysixModel? fiftysixModelObj}) {
    return FiftysixState(
      fiftysixModelObj: fiftysixModelObj ?? this.fiftysixModelObj,
    );
  }
}
