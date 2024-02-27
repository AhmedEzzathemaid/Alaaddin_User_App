// ignore_for_file: must_be_immutable

part of 'eighteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Eighteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EighteenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Eighteen widget is first created.
class EighteenInitialEvent extends EighteenEvent {
  @override
  List<Object?> get props => [];
}
