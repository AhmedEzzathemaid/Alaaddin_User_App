// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [s22_item_widget] screen.
class S22ItemModel extends Equatable {S22ItemModel({this.s, this.isSelected, }) { s = s  ?? "S";isSelected = isSelected  ?? false; }

String? s;

bool? isSelected;

S22ItemModel copyWith({String? s, bool? isSelected, }) { return S22ItemModel(
s : s ?? this.s,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [s,isSelected];
 }
