// ignore_for_file: must_be_immutable

part of 'ninetysix_bloc.dart';

/// Represents the state of Ninetysix in the application.
class NinetysixState extends Equatable {
  NinetysixState({this.ninetysixModelObj});

  NinetysixModel? ninetysixModelObj;

  @override
  List<Object?> get props => [
        ninetysixModelObj,
      ];

  NinetysixState copyWith({NinetysixModel? ninetysixModelObj}) {
    return NinetysixState(
      ninetysixModelObj: ninetysixModelObj ?? this.ninetysixModelObj,
    );
  }
}
