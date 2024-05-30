import 'package:jaspr/jaspr.dart';
import 'package:portfolio/components/nav_bar.dart';

import 'home.dart';

@client
class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield NavBar();
    yield div(
      classes: 'main',
      [const Home()],
    );
  }

  static get styles => [
        css('.main', [
          css('&')
              .box(height: 100.vh)
              .flexbox(direction: FlexDirection.row, wrap: FlexWrap.wrap)
              .background(color: Color.hex('#080825')),
          css('section')
              .flexItem(
                  flex: Flex(grow: 1, shrink: 0, basis: FlexBasis(400.px)))
              .flexbox(
                direction: FlexDirection.column,
                justifyContent: JustifyContent.center,
                alignItems: AlignItems.center,
              ),
        ]),
        ...Home.styles,
        ...NavBar.styles,
      ];
}
