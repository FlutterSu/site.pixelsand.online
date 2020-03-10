part of pixelsand;

const ColorCSS colorBackground = ColorCSS(0xff0B1440);

class HomeStyle extends StyleData {
  HomeStyle(Request request) : super(request: request);

  @override
  final List<StyleElement> styleClassList = [
    _allin,
    _body,
    _h1,
    _h2,
    block,
    marginAuto,
    logo,
    center,
    _navUl,
    _navUlLi,
    _navUlLiA,
    disabled,
    _navUlLiAHover,
    _paragraph,
    divStartPlay,
    _divStartPlayChild
  ];
}

final _allin = StyleElement(
    name: '*',
    style: StyleCSS(
      fontFamily: '\'Roboto\', sans-serif',
      color: ColorsCSS.white,
      boxSizing: BoxSizingCSS.borderBox,
      margin: EdgeInsetsCSSpx.all(0),
    ));

final _body = StyleElement(name: 'body', style: StyleCSS(background: BackgroundCSS(color: colorBackground)));

final _h1 = StyleElement(name: 'h1', style: StyleCSS.fromText('font-size: 50px; font-weight: 500; margin-top: 60px;'));
final _h2 = StyleElement(name: 'h2', style: StyleCSS.fromText('font-size: 40px; font-weight: 500; margin-top: 35px;'));

final block = StyleClass(name: 'block', style: StyleCSS(display: DisplayCSS.block));

final marginAuto = StyleClass(name: 'marginAuto', style: StyleCSS.fromText('margin: auto;'));

final logo =
    StyleClass(name: 'logo', style: StyleCSS.fromText('margin: auto;'), width: {900: StyleCSS.fromText('width: 50%;')});

final center = StyleClass(name: 'center', style: StyleCSS.fromText('text-align: center;'));

final _navUl = StyleElement(
    name: 'nav ul',
    style: StyleCSS(
      display: DisplayCSS.flex,
      textTransform: TextTransformCSS.uppercase,
      margin: EdgeInsetsCSSpx.only(top: 24),
      padding: EdgeInsetsCSSpx.all(0),
      justifyContent: JustifyContentCSS.center,
    ),
    width: {600: StyleCSS(flexDirection: FlexDirectionCSS.column, alignItems: AlignItemsCSS.center)});

final _navUlLi = StyleElement(name: 'nav ul li', style: StyleCSS(display: DisplayCSS.block));

final _navUlLiA = StyleElement(
  name: 'nav ul li a',
  style: StyleCSS(
    display: DisplayCSS.block,
    padding: EdgeInsetsCSSpx.all(10),
    textDecoration: TextDecorationCSS(type: TextDecorationTypeCSS.underline),
  ),
);

final disabled = StyleClass(
  name: 'disabled',
  style: StyleCSS(color: ColorCSS(0xff828282), cursor: 'default'),
);

final _navUlLiAHover = StyleElement(
  name: 'nav ul li a:not(.disabled):hover',
  style: StyleCSS(textDecoration: TextDecorationCSS(type: TextDecorationTypeCSS.underline, color: ColorsCSS.red)),
);

final _paragraph = StyleElement(
  name: 'p',
  style:
      StyleCSS(padding: EdgeInsetsCSSpx.all(10), margin: EdgeInsetsCSS.all(SizeCSS.auto()), maxWidth: SizeCSS.px(500)),
);

final divStartPlay = StyleClass(
  name: 'start_play',
  style: StyleCSS(
    display: DisplayCSS.flex,
    flexDirection: FlexDirectionCSS.column,
    alignItems: AlignItemsCSS.center,
  ),
);

final _divStartPlayChild = StyleElement(name: '.start_play > *', style: StyleCSS(margin: EdgeInsetsCSSpx.all(10)));
