// ignore_for_file: must_be_immutable

part of 'twenty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Twenty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TwentyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Twenty widget is first created.
class TwentyInitialEvent extends TwentyEvent {
  @override
  List<Object?> get props => [];
}
