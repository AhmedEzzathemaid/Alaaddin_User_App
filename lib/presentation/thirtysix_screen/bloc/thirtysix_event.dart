// ignore_for_file: must_be_immutable

part of 'thirtysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Thirtysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirtysixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Thirtysix widget is first created.
class ThirtysixInitialEvent extends ThirtysixEvent {
  @override
  List<Object?> get props => [];
}
