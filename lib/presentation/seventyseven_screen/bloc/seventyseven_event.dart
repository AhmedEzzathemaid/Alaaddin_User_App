// ignore_for_file: must_be_immutable

part of 'seventyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Seventyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeventysevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Seventyseven widget is first created.
class SeventysevenInitialEvent extends SeventysevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SeventysevenEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
