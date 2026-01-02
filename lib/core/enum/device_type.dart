enum DeviceType {
  mobile(530),
  tablet(945),
  desktop(1200);

  final int deviceWidth;
  const DeviceType(this.deviceWidth);
}
