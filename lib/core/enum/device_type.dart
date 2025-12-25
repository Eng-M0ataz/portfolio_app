enum DeviceType {
  mobile(530),
  tablet(920),
  desktop(1200);

  final int deviceWidth;
  const DeviceType(this.deviceWidth);
}
