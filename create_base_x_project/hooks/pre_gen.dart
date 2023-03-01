import 'package:mason/mason.dart';

void run(HookContext context) async {
  String projectName = context.vars['project_name'];
  String packageName = context.vars['project_name'];
  List<String> splitArr = projectName.split(' ');
  if (splitArr.length < 2) {
    context.vars['name'] = projectName;
    packageName = context.vars['project_name'] = 'my $projectName';
  }
  context.logger.success('Package Name: com.${packageName.dotCase}');
}
