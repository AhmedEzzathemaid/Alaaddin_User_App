// ignore_for_file: must_be_immutable

part of 'six_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SixContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SixContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SixContainer widget is first created.
class SixContainerInitialEvent extends SixContainerEvent {
  @override
  List<Object?> get props => [];
}
