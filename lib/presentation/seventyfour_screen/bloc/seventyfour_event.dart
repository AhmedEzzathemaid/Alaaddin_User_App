// ignore_for_file: must_be_immutable

part of 'seventyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Seventyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeventyfourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Seventyfour widget is first created.
class SeventyfourInitialEvent extends SeventyfourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SeventyfourEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
