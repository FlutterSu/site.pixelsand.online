part of pixelsand;

class PixelSandRouter extends Router with Loggable {
  final Config config;

  PixelSandRouter({this.config});

  final List<NodeElement> _headerLinks = [
    Link(href: '/style.css', rel: 'stylesheet'),
    Link(href: '/favicon.ico', rel: 'shortcut icon'),
    Link(href: 'https://fonts.googleapis.com/css?family=Roboto:300&display=swap', rel: 'stylesheet'),
    Meta(charset: 'utf-8'),
    Meta(name: 'viewport', content: 'width=device-width, initial-scale=1,user-scalable=0'),
  ];

  @override
  Future<Response> builder(Request request) async {
    var urlPath = request.url.path.toLowerCase();

    if (urlPath.startsWith('images/')) {
      return FileData.path('assets/$urlPath', request: request).builder();
    } else if (urlPath.startsWith('play/')) {
      return ProxyData(request: request, url: 'https://app3.flutter.su/', relativePathFrom: 'play').builder();
    } else {
      switch (urlPath) {
        case '':
          return _responseOk('Flutter Pixel Sand', HomePage.build());
        case 'style.css':
          return HomeStyle(request).builder();
        case 'favicon.ico':
          return FileData.path('assets/favicon.ico', request: request).builder();
        case 'play':
          return Response(301, headers: {'Location': 'play/'});
        default:
          return _responseNotFound();
      }
    }
  }

  Response _responseNotFound() {
    var htmlNotFound = Document(
      child: Html(lang: 'ru', children: [
        Head(children: [
          Title(child: Text('Page not found 404')),
          ..._headerLinks,
        ]),
        Body(styleList: [
          StyleElement(
            style: StyleCSS(
              textAlign: TextAlignCSS.center,
              display: DisplayCSS.flex,
              flexDirection: FlexDirectionCSS.column,
              alignItems: AlignItemsCSS.center,
              justifyContent: JustifyContentCSS.center,
              height: SizeCSS.vh(100),
            ),
          )
        ], children: [
          H1(child: Text('Page not found 404')),
          A(child: Text('back to start page'), href: '/', styleList: [
            StyleElement(
              style: StyleCSS(
                textDecoration: TextDecorationCSS(
                  color: ColorsCSS.red,
                  type: TextDecorationTypeCSS.underline,
                  style: TextDecorationStyleCSS.wavy,
                ),
              ),
            )
          ]),
        ]),
      ]),
    );

    return Response.notFound(htmlNotFound.html, headers: {'Content-Type': MimeTypes.html});
  }

  Response _responseOk(String title, List<NodeElement> elements) {
    return Response.ok(
        Document(
          child: Html(
            lang: 'ru',
            children: [
              Head(children: [
                Title(child: Text(title)),
                ..._headerLinks,
              ]),
              Body(children: elements),
            ],
          ),
        ).html,
        headers: {'Content-Type': MimeTypes.html});
  }
}
