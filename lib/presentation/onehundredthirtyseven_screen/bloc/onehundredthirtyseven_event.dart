// ignore_for_file: must_be_immutable

part of 'onehundredthirtyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredthirtyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredthirtysevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredthirtyseven widget is first created.
class OnehundredthirtysevenInitialEvent extends OnehundredthirtysevenEvent {
  @override
  List<Object?> get props => [];
}
