// ignore_for_file: must_be_immutable

part of 'fiftyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fiftyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiftysevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fiftyseven widget is first created.
class FiftysevenInitialEvent extends FiftysevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends FiftysevenEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
