import 'package:jaspr/jaspr.dart';

import 'app.dart';

List<StyleRule> get styles => [
      const StyleRule.import('https://fonts.googleapis.com/css?family=Exo+2'),
      css('html, body')
          .text(
            color: Colors.white,
            fontFamily: const FontFamily.list(
              [FontFamily('Roboto'), FontFamilies.sansSerif],
            ),
          )
          .box(margin: EdgeInsets.zero, padding: EdgeInsets.zero),
      css('h1').text(fontSize: 3.rem).box(margin: EdgeInsets.unset),
      ...App.styles,
    ];
