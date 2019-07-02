import 'package:flutter/material.dart';
import 'history_list_tile.dart';

const Duration _kExpand = Duration(milliseconds: 200);

class HistoryListExpansionTile extends StatefulWidget {
  final TextStyle childrenStyle;
  const HistoryListExpansionTile({
    Key key,
    @required this.text,
    this.onExpansionChanged,
    this.children = const <Widget>[],
    this.childrenStyle,
    this.initiallyExpanded = false,
  })  : assert(initiallyExpanded != null),
        super(key: key);
  final String text;
  final ValueChanged<bool> onExpansionChanged;
  final List<Widget> children;
  final bool initiallyExpanded;

  @override
  _HistoryListExpansionTileState createState() =>
      _HistoryListExpansionTileState();
}

class _HistoryListExpansionTileState extends State<HistoryListExpansionTile>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  static final Animatable<double> _halfTween =
      Tween<double>(begin: 0.0, end: 0.5);

  AnimationController _controller;
  Animation<double> _iconTurns;
  Animation<double> _heightFactor;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _kExpand, vsync: this);
    _heightFactor = _controller.drive(_easeInTween);
    _iconTurns = _controller.drive(_halfTween.chain(_easeInTween));

    _isExpanded =
        PageStorage.of(context)?.readState(context) ?? widget.initiallyExpanded;
    if (_isExpanded) _controller.value = 1.0;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((void value) {
          if (!mounted) return;
          setState(() {
            // Rebuild without widget.children.
          });
        });
      }
      PageStorage.of(context)?.writeState(context, _isExpanded);
    });
    if (widget.onExpansionChanged != null)
      widget.onExpansionChanged(_isExpanded);
  }

  Widget _buildChildren(BuildContext context, Widget child) {
    return Container(
      child: Column(
        children: <Widget>[
          HistoryListTile(
            text: widget.text,
            style: widget.childrenStyle,
            icon: RotationTransition(
              turns: _iconTurns,
              child: const Icon(Icons.expand_more),
            ),
            onTap: () {
              _handleTap();
            },
          ),
          ClipRect(
            child: Align(
              heightFactor: _heightFactor.value,
              child: child,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool closed = !_isExpanded && _controller.isDismissed;
    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildChildren,
      child: closed ? null : Column(children: widget.children),
    );
  }
}
