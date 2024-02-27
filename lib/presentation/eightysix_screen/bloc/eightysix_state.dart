// ignore_for_file: must_be_immutable

part of 'eightysix_bloc.dart';

/// Represents the state of Eightysix in the application.
class EightysixState extends Equatable {
  EightysixState({this.eightysixModelObj});

  EightysixModel? eightysixModelObj;

  @override
  List<Object?> get props => [
        eightysixModelObj,
      ];

  EightysixState copyWith({EightysixModel? eightysixModelObj}) {
    return EightysixState(
      eightysixModelObj: eightysixModelObj ?? this.eightysixModelObj,
    );
  }
}
