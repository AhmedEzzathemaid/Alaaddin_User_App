// ignore_for_file: must_be_immutable

part of 'ninetyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ninetyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NinetyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ninetyfive widget is first created.
class NinetyfiveInitialEvent extends NinetyfiveEvent {
  @override
  List<Object?> get props => [];
}
