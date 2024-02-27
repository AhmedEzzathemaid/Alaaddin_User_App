// ignore_for_file: must_be_immutable

part of 'ninetyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ninetyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NinetyoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ninetyone widget is first created.
class NinetyoneInitialEvent extends NinetyoneEvent {
  @override
  List<Object?> get props => [];
}
