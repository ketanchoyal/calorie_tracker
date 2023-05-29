part of 'add_food.view.dart';

class AddFoodBarcodeScanner extends StatelessWidget {
  const AddFoodBarcodeScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AiBarcodeScanner(
      controller: MobileScannerController(
        detectionSpeed: DetectionSpeed.noDuplicates,
      ),
      canPop: false,
      onScan: (String value) {
        debugPrint(value);
      },
      onDetect: (BarcodeCapture barcodeCapture) {
        debugPrint(barcodeCapture.barcodes.toString());
        Navigator.pop(context, barcodeCapture.barcodes.first.rawValue);
      },
    );
  }
}
