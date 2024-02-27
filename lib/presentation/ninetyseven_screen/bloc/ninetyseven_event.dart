// ignore_for_file: must_be_immutable

part of 'ninetyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Ninetyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NinetysevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Ninetyseven widget is first created.
class NinetysevenInitialEvent extends NinetysevenEvent {
  @override
  List<Object?> get props => [];
}
