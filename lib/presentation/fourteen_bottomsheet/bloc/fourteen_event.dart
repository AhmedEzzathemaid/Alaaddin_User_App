// ignore_for_file: must_be_immutable

part of 'fourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FourteenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fourteen widget is first created.
class FourteenInitialEvent extends FourteenEvent {
  @override
  List<Object?> get props => [];
}
