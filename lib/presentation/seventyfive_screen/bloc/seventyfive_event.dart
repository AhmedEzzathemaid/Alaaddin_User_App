// ignore_for_file: must_be_immutable

part of 'seventyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Seventyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeventyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Seventyfive widget is first created.
class SeventyfiveInitialEvent extends SeventyfiveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SeventyfiveEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
