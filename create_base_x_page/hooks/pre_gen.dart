import 'dart:io';
import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

void run(HookContext context) async {
  try {
    File f = new File('./pubspec.yaml');
    f.readAsString().then((String text) {
      Map yaml = loadYaml(text);
      context.vars['package_name'] = yaml['name'];
    });
  } catch (_) {
    throw Exception("The output directory should be inside the lib folder.");
  }
}
