// ignore_for_file: must_be_immutable

part of 'sixtyone_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SixtyoneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SixtyoneTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SixtyoneTabContainer widget is first created.
class SixtyoneTabContainerInitialEvent extends SixtyoneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
