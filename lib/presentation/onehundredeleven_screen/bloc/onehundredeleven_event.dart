// ignore_for_file: must_be_immutable

part of 'onehundredeleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredeleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredelevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredeleven widget is first created.
class OnehundredelevenInitialEvent extends OnehundredelevenEvent {
  @override
  List<Object?> get props => [];
}
