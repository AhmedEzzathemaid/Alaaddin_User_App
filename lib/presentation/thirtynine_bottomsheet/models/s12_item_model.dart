// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [s12_item_widget] screen.
class S12ItemModel extends Equatable {S12ItemModel({this.s, this.isSelected, }) { s = s  ?? "S";isSelected = isSelected  ?? false; }

String? s;

bool? isSelected;

S12ItemModel copyWith({String? s, bool? isSelected, }) { return S12ItemModel(
s : s ?? this.s,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [s,isSelected];
 }
