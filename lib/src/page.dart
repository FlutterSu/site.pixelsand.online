part of pixelsand;

const startPlayId = 'StartPlay';

class HomePage with Loggable {
  static List<NodeElement> build() {
    return [
      Header(
        children: [
          Img(src: '/images/logo.png', classList: [logo, block]),
          Nav(
              child: Ul(children: [
            Li(child: A(child: Text('Start play'), href: '#$startPlayId')),
            Li(child: A(child: Text('Donate list'), classList: [disabled])),
            Li(child: A(child: Text('What\'s new'), classList: [disabled])),
            Li(child: A(child: Text('Contact'), classList: [disabled])),
          ])),
        ],
      ),
      Main(children: [
        Section(children: [
          H1(classList: [center], child: Text('Flutter Pixel Sand')),
          P(
            child: Text(
                'The game is about pixel sand. Developed with Google Flutter SDK.\nUse your phone\'s accelerometer to pour sand.'),
          ),
          Div(
              classList: [marginAuto, center],
              styleList: [StyleElement.fromText('margin-top: 20px; max-width: 560px;')],
              child: Text(
                  '<iframe width="100%" height="315" src="https://www.youtube.com/embed/emPG1gnXj1U" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')),
        ]),
        Section(children: [
          H2(classList: [center], id: startPlayId, child: Text('Start Play')),
          Div(classList: [
            divStartPlay
          ], children: [
            P(child: Text('Play now online')),
            A(
              href: '/play',
              child: Img(src: '/images/get_in_web_browser.png'),
            ),
            P(child: Text('Play on Android')),
            A(
              href: 'https://play.google.com/store/apps/details?id=su.flutter.pixelsand',
              target: TargetA.blank(),
              rel: RelA.nofollow,
              child: Img(src: '/images/get_in_google_play.png'),
            ),
            P(child: Text('Sorry, but now not available on iOS')),
            A(child: Img(src: '/images/get_in_app_store.png')),
          ]),
        ]),
      ]),
      Footer(),
    ];
  }
}
