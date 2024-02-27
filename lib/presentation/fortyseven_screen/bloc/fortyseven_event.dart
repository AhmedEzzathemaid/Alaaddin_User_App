// ignore_for_file: must_be_immutable

part of 'fortyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fortyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FortysevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fortyseven widget is first created.
class FortysevenInitialEvent extends FortysevenEvent {
  @override
  List<Object?> get props => [];
}
