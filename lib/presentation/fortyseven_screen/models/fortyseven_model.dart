// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'fortyseven_item_model.dart';/// This class defines the variables used in the [fortyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FortysevenModel extends Equatable {FortysevenModel({this.fortysevenItemList = const []}) {  }

List<FortysevenItemModel> fortysevenItemList;

FortysevenModel copyWith({List<FortysevenItemModel>? fortysevenItemList}) { return FortysevenModel(
fortysevenItemList : fortysevenItemList ?? this.fortysevenItemList,
); } 
@override List<Object?> get props => [fortysevenItemList];
 }
