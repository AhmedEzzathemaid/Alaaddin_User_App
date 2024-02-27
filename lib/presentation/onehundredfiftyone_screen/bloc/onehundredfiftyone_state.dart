// ignore_for_file: must_be_immutable

part of 'onehundredfiftyone_bloc.dart';

/// Represents the state of Onehundredfiftyone in the application.
class OnehundredfiftyoneState extends Equatable {
  OnehundredfiftyoneState({this.onehundredfiftyoneModelObj});

  OnehundredfiftyoneModel? onehundredfiftyoneModelObj;

  @override
  List<Object?> get props => [
        onehundredfiftyoneModelObj,
      ];

  OnehundredfiftyoneState copyWith(
      {OnehundredfiftyoneModel? onehundredfiftyoneModelObj}) {
    return OnehundredfiftyoneState(
      onehundredfiftyoneModelObj:
          onehundredfiftyoneModelObj ?? this.onehundredfiftyoneModelObj,
    );
  }
}
