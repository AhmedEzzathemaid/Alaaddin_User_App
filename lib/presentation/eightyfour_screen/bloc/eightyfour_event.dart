// ignore_for_file: must_be_immutable

part of 'eightyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Eightyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EightyfourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Eightyfour widget is first created.
class EightyfourInitialEvent extends EightyfourEvent {
  @override
  List<Object?> get props => [];
}
