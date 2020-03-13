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
    _divStartPlayChild,
    _divStartPlayChildAfter,
    _divContact,
    _divStartPlayChildDisabled,
    _divStartPlayChildAfterDisabled
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
    alignItems: AlignItemsCSS.center,
    justifyContent: JustifyContentCSS.center,
    flexWrap: FlexWrapCSS.wrap,
  ),
);

final _divStartPlayChild = StyleElement(
  name: '.start_play > *',
  style: StyleCSS(
    margin: EdgeInsetsCSSpx.all(20),
    display: DisplayCSS.flex,
    flexDirection: FlexDirectionCSS.column,
    height: SizeCSS.px(150),
    textAlign: TextAlignCSS.center,
    borderRadius: BorderRadiusCSSpx.symmetric(topLeftBottomRight: 150),
    padding: EdgeInsetsCSSpx.symmetric(horizontal: 8, vertical: 8),
    position: PositionCSS.relative,
  ),
);

final _divStartPlayChildAfter = StyleElement(
  name: '.start_play > *:after',
  style: StyleCSS(
      content: ContentCSS.text(''),
      margin: EdgeInsetsCSSpx.only(left: -10, top: -10),
      display: DisplayCSS.block,
      height: SizeCSS.percent(100),
      width: SizeCSS.percent(100),
      borderRadius: BorderRadiusCSSpx.symmetric(bottomLeftTopRight: 150),
      background: BackgroundCSS(color: ColorCSS(0xffff1dc4)),
      zIndex: -1,
      position: PositionCSS.absolute),
);

final _divStartPlayChildDisabled = StyleElement(
  name: '.start_play > *.disabled',
  style: StyleCSS(background: BackgroundCSS(color: ColorCSS(0xff909090))),
);

final _divStartPlayChildAfterDisabled = StyleElement(
  name: '.start_play > *.disabled:after',
  style: StyleCSS(background: BackgroundCSS(color: ColorCSS(0xff565656))),
);

final _divContact = StyleElement(
  name: '#contact',
  style: StyleCSS(
    height: SizeCSS.px(150),
  ),
);
