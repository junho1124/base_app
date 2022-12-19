import 'package:base_app/env/environment.dart';

void main() {
  Environment.newInstance(BuildType.prod).run();
}