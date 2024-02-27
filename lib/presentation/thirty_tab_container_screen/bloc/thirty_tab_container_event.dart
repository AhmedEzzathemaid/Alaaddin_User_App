// ignore_for_file: must_be_immutable

part of 'thirty_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ThirtyTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirtyTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ThirtyTabContainer widget is first created.
class ThirtyTabContainerInitialEvent extends ThirtyTabContainerEvent {
  @override
  List<Object?> get props => [];
}
