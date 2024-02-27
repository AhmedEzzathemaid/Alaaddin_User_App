// ignore_for_file: must_be_immutable

part of 'seventythree_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SeventythreeTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeventythreeTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SeventythreeTabContainer widget is first created.
class SeventythreeTabContainerInitialEvent
    extends SeventythreeTabContainerEvent {
  @override
  List<Object?> get props => [];
}
