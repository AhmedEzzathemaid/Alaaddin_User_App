// ignore_for_file: must_be_immutable

part of 'fortytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fortytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FortytwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fortytwo widget is first created.
class FortytwoInitialEvent extends FortytwoEvent {
  @override
  List<Object?> get props => [];
}
