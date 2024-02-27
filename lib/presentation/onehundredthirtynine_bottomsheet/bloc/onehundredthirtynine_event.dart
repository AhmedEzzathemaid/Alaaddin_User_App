// ignore_for_file: must_be_immutable

part of 'onehundredthirtynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredthirtynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredthirtynineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredthirtynine widget is first created.
class OnehundredthirtynineInitialEvent extends OnehundredthirtynineEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends OnehundredthirtynineEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
