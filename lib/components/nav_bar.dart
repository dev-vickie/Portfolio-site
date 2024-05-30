import 'package:jaspr/jaspr.dart';

class NavBar extends StatelessComponent {
  const NavBar({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'header',
      [
        nav(
          [
            ul(
              [
                li([
                  a([Text("Home")], href: '#')
                ]),
                li([
                  a([Text("About")], href: '#')
                ]),
                li([
                  a([Text("Projects")], href: '#')
                ]),
                li([
                  a([Text("Contact")], href: '#')
                ]),
              ],
              classes: 'nav-links',
            ),
          ],
        ),
      ],
    );
  }

  static get styles => [
        css(
          '.header',
          [
            css('&')
                .box(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.px, vertical: 10.px),
                  margin: EdgeInsets.zero,
                )
                .background(color: Color.hex('#080825')),
            css('.nav-links')
                .box(padding: EdgeInsets.zero, margin: EdgeInsets.zero),
            css('li')
                .box(
                  display: Display.inlineBlock,
                  radius: BorderRadius.circular(5.px),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.px, vertical: 5.px),
                  margin: EdgeInsets.symmetric(horizontal: 5.px),
                  border: Border.all(
                    BorderSide(color: Colors.gray, width: 1.px,style: BorderStyle.solid),
                  ),
                ),
            css('a').text(
              color: Colors.white,
              decoration: TextDecoration(style: TextDecorationStyle.unset),
            ),
          ],
        ),
      ];
}
