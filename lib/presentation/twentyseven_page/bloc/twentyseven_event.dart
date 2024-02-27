// ignore_for_file: must_be_immutable

part of 'twentyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Twentyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TwentysevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Twentyseven widget is first created.
class TwentysevenInitialEvent extends TwentysevenEvent {
  @override
  List<Object?> get props => [];
}
