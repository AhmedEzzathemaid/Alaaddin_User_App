// ignore_for_file: must_be_immutable

part of 'onehundredfifty_bloc.dart';

/// Represents the state of Onehundredfifty in the application.
class OnehundredfiftyState extends Equatable {
  OnehundredfiftyState({this.onehundredfiftyModelObj});

  OnehundredfiftyModel? onehundredfiftyModelObj;

  @override
  List<Object?> get props => [
        onehundredfiftyModelObj,
      ];

  OnehundredfiftyState copyWith(
      {OnehundredfiftyModel? onehundredfiftyModelObj}) {
    return OnehundredfiftyState(
      onehundredfiftyModelObj:
          onehundredfiftyModelObj ?? this.onehundredfiftyModelObj,
    );
  }
}
