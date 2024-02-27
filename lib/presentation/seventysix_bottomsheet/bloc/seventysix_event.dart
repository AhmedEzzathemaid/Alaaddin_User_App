// ignore_for_file: must_be_immutable

part of 'seventysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Seventysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeventysixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Seventysix widget is first created.
class SeventysixInitialEvent extends SeventysixEvent {
  @override
  List<Object?> get props => [];
}
