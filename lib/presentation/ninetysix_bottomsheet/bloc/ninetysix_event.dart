// ignore_for_file: must_be_immutable

part of 'ninetysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ninetysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NinetysixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ninetysix widget is first created.
class NinetysixInitialEvent extends NinetysixEvent {
  @override
  List<Object?> get props => [];
}
