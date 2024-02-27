// ignore_for_file: must_be_immutable

part of 'sixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SixteenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Sixteen widget is first created.
class SixteenInitialEvent extends SixteenEvent {
  @override
  List<Object?> get props => [];
}
