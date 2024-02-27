// ignore_for_file: must_be_immutable

part of 'ninetyone_bloc.dart';

/// Represents the state of Ninetyone in the application.
class NinetyoneState extends Equatable {
  NinetyoneState({this.ninetyoneModelObj});

  NinetyoneModel? ninetyoneModelObj;

  @override
  List<Object?> get props => [
        ninetyoneModelObj,
      ];

  NinetyoneState copyWith({NinetyoneModel? ninetyoneModelObj}) {
    return NinetyoneState(
      ninetyoneModelObj: ninetyoneModelObj ?? this.ninetyoneModelObj,
    );
  }
}
