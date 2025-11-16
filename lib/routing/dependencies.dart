import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> _sharedProviders = [];

List<SingleChildWidget> get providersRemote {
  // Remote data service for staging/production
  return [];
}

List<SingleChildWidget> get providersLocal {
  // Local data service for development
  return [
    ..._sharedProviders,
  ];
}
