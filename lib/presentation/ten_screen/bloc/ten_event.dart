// ignore_for_file: must_be_immutable

part of 'ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ten widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ten widget is first created.
class TenInitialEvent extends TenEvent {
  @override
  List<Object?> get props => [];
}
