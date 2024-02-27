// ignore_for_file: must_be_immutable

part of 'eightyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Eightyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EightyoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Eightyone widget is first created.
class EightyoneInitialEvent extends EightyoneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends EightyoneEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
