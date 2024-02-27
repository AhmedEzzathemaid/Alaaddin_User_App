// ignore_for_file: must_be_immutable

part of 'ninetythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ninetythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NinetythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ninetythree widget is first created.
class NinetythreeInitialEvent extends NinetythreeEvent {
  @override
  List<Object?> get props => [];
}
