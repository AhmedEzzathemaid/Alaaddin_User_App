// ignore_for_file: must_be_immutable

part of 'onehundredfortyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfortyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfortyeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfortyeight widget is first created.
class OnehundredfortyeightInitialEvent extends OnehundredfortyeightEvent {
  @override
  List<Object?> get props => [];
}
