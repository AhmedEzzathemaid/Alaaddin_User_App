// ignore_for_file: must_be_immutable

part of 'nineteen_bloc.dart';

/// Represents the state of Nineteen in the application.
class NineteenState extends Equatable {
  NineteenState({this.nineteenModelObj});

  NineteenModel? nineteenModelObj;

  @override
  List<Object?> get props => [
        nineteenModelObj,
      ];

  NineteenState copyWith({NineteenModel? nineteenModelObj}) {
    return NineteenState(
      nineteenModelObj: nineteenModelObj ?? this.nineteenModelObj,
    );
  }
}
