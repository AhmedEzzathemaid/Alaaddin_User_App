// ignore_for_file: must_be_immutable

part of 'onehundredfiftyseven_bloc.dart';

/// Represents the state of Onehundredfiftyseven in the application.
class OnehundredfiftysevenState extends Equatable {
  OnehundredfiftysevenState({this.onehundredfiftysevenModelObj});

  OnehundredfiftysevenModel? onehundredfiftysevenModelObj;

  @override
  List<Object?> get props => [
        onehundredfiftysevenModelObj,
      ];

  OnehundredfiftysevenState copyWith(
      {OnehundredfiftysevenModel? onehundredfiftysevenModelObj}) {
    return OnehundredfiftysevenState(
      onehundredfiftysevenModelObj:
          onehundredfiftysevenModelObj ?? this.onehundredfiftysevenModelObj,
    );
  }
}
