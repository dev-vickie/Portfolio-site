import 'package:jaspr/server.dart';

import 'app.dart';
import 'jaspr_options.dart';
import 'styles.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );
  runApp(
    Document(
      body: App(),
      title: 'Victor Mutethia',
      styles: styles,
    ),
  );
}
