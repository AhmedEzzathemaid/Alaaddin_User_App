// ignore_for_file: must_be_immutable

part of 'ninetytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ninetytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NinetytwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ninetytwo widget is first created.
class NinetytwoInitialEvent extends NinetytwoEvent {
  @override
  List<Object?> get props => [];
}
