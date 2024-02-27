// ignore_for_file: must_be_immutable

part of 'sixtynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sixtynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SixtynineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Sixtynine widget is first created.
class SixtynineInitialEvent extends SixtynineEvent {
  @override
  List<Object?> get props => [];
}
