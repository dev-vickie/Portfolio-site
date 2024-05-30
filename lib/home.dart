import 'package:jaspr/jaspr.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(
      [
        div(
          classes: 'homebody',
          [
            img(
              classes: 'profile',
              src: 'images/profile.jpg',
            ),
            div(
              classes: 'info',
              [
                h1([text('Victor Mutethia')]),
                p([text('vmutethia84@gmail.com')]),
                div(styles: Styles.box(height: 10.px), []),
                div(
                  classes: 'links',
                  [
                    a(
                      href: 'https://github.com/dev-vickie',
                      [img(src: 'images/github.png', width: 60)],
                      target: Target.blank,
                    ),
                    a(
                      href: 'https://twitter.com/v_mutethia_',
                      [img(src: 'images/x.png', width: 20)],
                      target: Target.blank,
                    ),
                  ],
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  static get styles => [
        css('.homebody', [
          css('&')
              .box(
                padding: EdgeInsets.symmetric(horizontal: 60.px),
                margin: EdgeInsets.symmetric(vertical: 50.px),
              )
              .flexbox(
                direction: FlexDirection.row,
                justifyContent: JustifyContent.center,
                alignItems: AlignItems.center,
              ),
          css('.info').box(
            margin: EdgeInsets.symmetric(horizontal: 20.px),
          ),
          css('.profile').box(
            width: 400.px,
            height: 400.px,
            radius: BorderRadius.circular(200.px),
          )
        ]),
        css(
          '.links',
          [
            css('a').box(
              padding: EdgeInsets.symmetric(horizontal: 2.px),
              boxSizing: BoxSizing.borderBox,
              minWidth: 0.5.em,
            ),
            css('img').box(
              width: 30.px,
              height: 30.px,
              margin: EdgeInsets.only(right: 5.px),
            ),
          ],
        ),
      ];
}
