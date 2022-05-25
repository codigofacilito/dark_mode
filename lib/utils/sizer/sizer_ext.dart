
import 'package:workshop_dark_mode/utils/sizer/util_sizer.dart';

extension SizerExt on num {
  double get _scaleFactor =>SizerUtil.deviceType==DeviceType.mobile?1:SizerUtil.deviceType==DeviceType.web?0.8:1.1;


  /// Calculates the height depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's height
  double get h => (this * (SizerUtil.height *_scaleFactor) / SizerUtil.height);
  double get w => (this * (SizerUtil.width *_scaleFactor) / SizerUtil.width);


  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.w -> will take 20% of the screen's width

  /// Calculates the sp (Scalable Pixel) depending on the device's screen size
  double get sp => (this * (SizerUtil.width *_scaleFactor) / SizerUtil.width) * _scaleFactor;

}
