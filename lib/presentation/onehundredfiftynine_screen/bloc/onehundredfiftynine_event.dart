// ignore_for_file: must_be_immutable

part of 'onehundredfiftynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfiftynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfiftynineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfiftynine widget is first created.
class OnehundredfiftynineInitialEvent extends OnehundredfiftynineEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends OnehundredfiftynineEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
