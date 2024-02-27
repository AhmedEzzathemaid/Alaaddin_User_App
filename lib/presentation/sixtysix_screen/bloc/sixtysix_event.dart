// ignore_for_file: must_be_immutable

part of 'sixtysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sixtysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SixtysixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Sixtysix widget is first created.
class SixtysixInitialEvent extends SixtysixEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SixtysixEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
