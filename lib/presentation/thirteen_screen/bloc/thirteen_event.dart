// ignore_for_file: must_be_immutable

part of 'thirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Thirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirteenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Thirteen widget is first created.
class ThirteenInitialEvent extends ThirteenEvent {
  @override
  List<Object?> get props => [];
}
