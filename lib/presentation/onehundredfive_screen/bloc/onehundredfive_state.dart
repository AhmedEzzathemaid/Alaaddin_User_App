// ignore_for_file: must_be_immutable

part of 'onehundredfive_bloc.dart';

/// Represents the state of Onehundredfive in the application.
class OnehundredfiveState extends Equatable {
  OnehundredfiveState({this.onehundredfiveModelObj});

  OnehundredfiveModel? onehundredfiveModelObj;

  @override
  List<Object?> get props => [
        onehundredfiveModelObj,
      ];

  OnehundredfiveState copyWith({OnehundredfiveModel? onehundredfiveModelObj}) {
    return OnehundredfiveState(
      onehundredfiveModelObj:
          onehundredfiveModelObj ?? this.onehundredfiveModelObj,
    );
  }
}
