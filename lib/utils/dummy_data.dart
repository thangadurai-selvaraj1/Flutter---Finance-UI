import 'package:financeappui/models/transaction_model.dart';
import 'package:financeappui/resourcs/images.dart';

import '../models/settings_model.dart';
import '../models/slider_model.dart';

List<SliderModel> getSliderModelDummyData() {
  return [
    SliderModel(date: "Jan", value: 70.0),
    SliderModel(date: "Feb", value: 50.0),
    SliderModel(date: "Mar", value: 60.0),
    SliderModel(date: "Apr", value: 20.0),
    SliderModel(date: "May", value: 30.0),
    SliderModel(date: "Jun", value: 90.0),
    SliderModel(date: "Jul", value: 10.0),
    SliderModel(date: "Aug", value: 40.0),
    SliderModel(date: "Sep", value: 60.0),
    SliderModel(date: "Oct", value: 80.0),
    SliderModel(date: "Nov", value: 30.0),
    SliderModel(date: "Dec", value: 20.0),
  ];
}

List<SettingsModel> getSettingsModelDummyData() {
  return [
    const SettingsModel(
        imageName: MyImages.OFFICE_BUILDING_LOGO, text: "Corporate APP"),
    const SettingsModel(
        imageName: MyImages.SECURITY_LOGO, text: "Security Settings"),
    const SettingsModel(
        imageName: MyImages.SHOPPING_LOGO, text: "Online Shopping"),
    const SettingsModel(imageName: MyImages.STORE_LOGO, text: "Groceries"),
    const SettingsModel(imageName: MyImages.UTILITIES_LOGO, text: "Utilities"),
    const SettingsModel(
        imageName: MyImages.FINGER_PRINT_LOGO, text: "Thumb Scanner"),
  ];
}

List<TransactionModel> getTransactionModelDummyData() {
  return [
    TransactionModel(
        logo: MyImages.BURGER_LOGO,
        name: "KFC",
        date: "Jan 02",
        spendAmount: "100"),
    TransactionModel(
        logo: MyImages.PAYPAL_LOGO,
        name: "PayPal",
        date: "Jan 02",
        spendAmount: "500"),
    TransactionModel(
        logo: MyImages.WHEEL_LOGO,
        name: "Car Repair",
        date: "Jan 02",
        spendAmount: "498"),
    TransactionModel(
        logo: MyImages.SHOPPING_LOGO,
        name: "Shopping",
        date: "Jan 02",
        spendAmount: "576"),
    TransactionModel(
        logo: MyImages.PIZZA_LOGO,
        name: "Pizza",
        date: "Jan 02",
        spendAmount: "76"),
  ];
}
