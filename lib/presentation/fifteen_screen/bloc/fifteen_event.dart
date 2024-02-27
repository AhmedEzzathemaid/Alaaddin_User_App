// ignore_for_file: must_be_immutable

part of 'fifteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fifteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FifteenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fifteen widget is first created.
class FifteenInitialEvent extends FifteenEvent {
  @override
  List<Object?> get props => [];
}
