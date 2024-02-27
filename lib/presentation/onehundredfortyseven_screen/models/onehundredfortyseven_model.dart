// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'viewhierarchy5_item_model.dart';/// This class defines the variables used in the [onehundredfortyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredfortysevenModel extends Equatable {OnehundredfortysevenModel({this.viewhierarchy5ItemList = const []}) {  }

List<Viewhierarchy5ItemModel> viewhierarchy5ItemList;

OnehundredfortysevenModel copyWith({List<Viewhierarchy5ItemModel>? viewhierarchy5ItemList}) { return OnehundredfortysevenModel(
viewhierarchy5ItemList : viewhierarchy5ItemList ?? this.viewhierarchy5ItemList,
); } 
@override List<Object?> get props => [viewhierarchy5ItemList];
 }
