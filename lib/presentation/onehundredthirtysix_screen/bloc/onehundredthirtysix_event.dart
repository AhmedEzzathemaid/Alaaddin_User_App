// ignore_for_file: must_be_immutable

part of 'onehundredthirtysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredthirtysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredthirtysixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredthirtysix widget is first created.
class OnehundredthirtysixInitialEvent extends OnehundredthirtysixEvent {
  @override
  List<Object?> get props => [];
}
