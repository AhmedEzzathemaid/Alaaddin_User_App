import '../../../core/app_export.dart';/// This class is used in the [ordersummary1_item_widget] screen.
class Ordersummary1ItemModel {Ordersummary1ItemModel({this.widget, this.productName, this.totalPrice, this.orderDateTime, this.productImage, this.orderSchedule, this.orderDate, this.hours, this.hoursLabel, this.minutes, this.minutesLabel, this.seconds, this.secondsLabel, this.id, }) { widget = widget  ?? "#52156564320";productName = productName  ?? "products: 3";totalPrice = totalPrice  ?? "Total: 120.0 YER";orderDateTime = orderDateTime  ?? "22/01/2023 - 09:30 PM";productImage = productImage  ?? ImageConstant.imgCalendar11;orderSchedule = orderSchedule  ?? "Order schedule";orderDate = orderDate  ?? "Sun,07 May,2023";hours = hours  ?? "2";hoursLabel = hoursLabel  ?? "D";minutes = minutes  ?? "11";minutesLabel = minutesLabel  ?? "H";seconds = seconds  ?? "15";secondsLabel = secondsLabel  ?? "MIN";id = id  ?? ""; }

String? widget;

String? productName;

String? totalPrice;

String? orderDateTime;

String? productImage;

String? orderSchedule;

String? orderDate;

String? hours;

String? hoursLabel;

String? minutes;

String? minutesLabel;

String? seconds;

String? secondsLabel;

String? id;

 }
