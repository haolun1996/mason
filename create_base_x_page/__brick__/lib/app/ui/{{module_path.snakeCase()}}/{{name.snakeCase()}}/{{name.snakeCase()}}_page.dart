import 'package:flutter/material.dart';

import 'package:baseX/Core/x_base_widget.dart';
import 'package:{{{package_name}}}/app/ui/{{module_path.snakeCase()}}/{{name.snakeCase()}}/{{name.snakeCase()}}_controller.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Page extends BaseXWidget<{{#pascalCase}}{{name}}{{/pascalCase}}Controller>  {

  @override
  String get routeName => '/{{#paramCase}}{{name}}{{/paramCase}}';

  @override
  Widget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return Column(children: []);
  }
}