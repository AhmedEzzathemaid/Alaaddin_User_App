// ignore_for_file: must_be_immutable

part of 'onehundredfortyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfortyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfortyoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfortyone widget is first created.
class OnehundredfortyoneInitialEvent extends OnehundredfortyoneEvent {
  @override
  List<Object?> get props => [];
}
