// ignore_for_file: must_be_immutable

part of 'ninetyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ninetyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NinetyfourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ninetyfour widget is first created.
class NinetyfourInitialEvent extends NinetyfourEvent {
  @override
  List<Object?> get props => [];
}
