import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/cons.dart';

class TerminosCondiciones extends StatelessWidget {
  //provide the same scrollController for list and draggableScrollbar
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: SvgPicture.asset(
                    "assets/menuLateral.svg",
                    color: Constants.colorMorado,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          //DraggableScrollbar builds Stack with provided Scrollable List of Grid
          body: _contenido(),
        ),
    
    );
  }

  Widget _contenido() {
    return Container(
      //color: Colors.green,
      width: double.infinity,
      //height: 1600,
      //color: Colors.red,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 10.0),
            child: Text(
              "TÉRMINOS Y CONDICIONES " + "GENERALES DE USO " + "EN ARGENTINA",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Constants.colorMorado,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(height: 20.0,),
          Expanded(
            child: Container(
              child: DraggableScrollbar(
                heightScrollThumb: 50.0,
                controller: controller,
                child: ListView(
                  controller: controller,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 0.0),
                      child: Column(
                        children: <Widget>[
                          
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur" +
                                "adipiscing elit. Vivamus luctus porta" +
                                "porttitor. Duis facilisis, turpis ac porta" +
                                "condimentum, orci est sagittis augue," +
                                "vitae rhoncus lectus elit eget metus. Ut" +
                                "fringilla fringilla augue. Nulla facilisi." +
                                "Mauris pellentesque nulla at magna" +
                                "vulputate, non egestas felis auctor. Nullam" +
                                "faucibus nulla nec odio maximus, et" +
                                "congue est placerat. Integer ut nunc" +
                                "ullamcorper, vestibulum ante accumsan," +
                                "sodales diam. Nunc varius augue mollis," +
                                "feugiat erat vitae, tincidunt lorem. Quisque" +
                                "eget efficitur neque. Cras aliquet a purus" +
                                "sed interdum. In at metus eu elit gravida" +
                                "volutpat et sed purus.",
                            style: TextStyle(),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur" +
                                "adipiscing elit. Vivamus luctus porta" +
                                "porttitor. Duis facilisis, turpis ac porta" +
                                "condimentum, orci est sagittis augue," +
                                "vitae rhoncus lectus elit eget metus. Ut" +
                                "fringilla fringilla augue. Nulla facilisi." +
                                "Mauris pellentesque nulla at magna" +
                                "vulputate, non egestas felis auctor. Nullam" +
                                "faucibus nulla nec odio maximus, et" +
                                "congue est placerat. Integer ut nunc" +
                                "ullamcorper, vestibulum ante accumsan," +
                                "sodales diam. Nunc varius augue mollis," +
                                "feugiat erat vitae, tincidunt lorem. Quisque" +
                                "eget efficitur neque. Cras aliquet a purus" +
                                "sed interdum. In at metus eu elit gravida" +
                                "volutpat et sed purus.",
                            style: TextStyle(),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur" +
                                "adipiscing elit. Vivamus luctus porta" +
                                "porttitor. Duis facilisis, turpis ac porta" +
                                "condimentum, orci est sagittis augue," +
                                "vitae rhoncus lectus elit eget metus. Ut" +
                                "fringilla fringilla augue. Nulla facilisi." +
                                "Mauris pellentesque nulla at magna" +
                                "vulputate, non egestas felis auctor. Nullam" +
                                "faucibus nulla nec odio maximus, et" +
                                "congue est placerat. Integer ut nunc" +
                                "ullamcorper, vestibulum ante accumsan," +
                                "sodales diam. Nunc varius augue mollis," +
                                "feugiat erat vitae, tincidunt lorem. Quisque" +
                                "eget efficitur neque. Cras aliquet a purus" +
                                "sed interdum. In at metus eu elit gravida" +
                                "volutpat et sed purus.",
                            style: TextStyle(),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur" +
                                "adipiscing elit. Vivamus luctus porta" +
                                "porttitor. Duis facilisis, turpis ac porta" +
                                "condimentum, orci est sagittis augue," +
                                "vitae rhoncus lectus elit eget metus. Ut" +
                                "fringilla fringilla augue. Nulla facilisi." +
                                "Mauris pellentesque nulla at magna" +
                                "vulputate, non egestas felis auctor. Nullam" +
                                "faucibus nulla nec odio maximus, et" +
                                "congue est placerat. Integer ut nunc" +
                                "ullamcorper, vestibulum ante accumsan," +
                                "sodales diam. Nunc varius augue mollis," +
                                "feugiat erat vitae, tincidunt lorem. Quisque" +
                                "eget efficitur neque. Cras aliquet a purus" +
                                "sed interdum. In at metus eu elit gravida" +
                                "volutpat et sed purus.",
                            style: TextStyle(),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DraggableScrollbar extends StatefulWidget {
  final double heightScrollThumb;
  final Widget child;
  final ScrollController controller;

  DraggableScrollbar({this.heightScrollThumb, this.child, this.controller});

  @override
  _DraggableScrollbarState createState() => new _DraggableScrollbarState();
}

class _DraggableScrollbarState extends State<DraggableScrollbar> {
  //this counts offset for scroll thumb in Vertical axis
  double _barOffset;
  //this counts offset for list in Vertical axis
  double _viewOffset;
  //variable to track when scrollbar is dragged
  bool _isDragInProcess;

  @override
  void initState() {
    super.initState();
    _barOffset = 0.0;
    _viewOffset = 0.0;
    _isDragInProcess = false;
  }

  //if list takes 300.0 pixels of height on screen and scrollthumb height is 40.0
  //then max bar offset is 260.0
  double get barMaxScrollExtent =>
      context.size.height - widget.heightScrollThumb;
  double get barMinScrollExtent => 0.0;

  //this is usually lenght (in pixels) of list
  //if list has 1000 items of 100.0 pixels each, maxScrollExtent is 100,000.0 pixels
  double get viewMaxScrollExtent => widget.controller.position.maxScrollExtent;
  //this is usually 0.0
  double get viewMinScrollExtent => widget.controller.position.minScrollExtent;

  double getScrollViewDelta(
    double barDelta,
    double barMaxScrollExtent,
    double viewMaxScrollExtent,
  ) {
    //propotion
    return barDelta * viewMaxScrollExtent / barMaxScrollExtent;
  }

  double getBarDelta(
    double scrollViewDelta,
    double barMaxScrollExtent,
    double viewMaxScrollExtent,
  ) {
    //propotion
    return scrollViewDelta * barMaxScrollExtent / viewMaxScrollExtent;
  }

  void _onVerticalDragStart(DragStartDetails details) {
    setState(() {
      _isDragInProcess = true;
    });
  }

  void _onVerticalDragEnd(DragEndDetails details) {
    setState(() {
      _isDragInProcess = false;
    });
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _barOffset += details.delta.dy;

      if (_barOffset < barMinScrollExtent) {
        _barOffset = barMinScrollExtent;
      }
      if (_barOffset > barMaxScrollExtent) {
        _barOffset = barMaxScrollExtent;
      }

      double viewDelta = getScrollViewDelta(
          details.delta.dy, barMaxScrollExtent, viewMaxScrollExtent);

      _viewOffset = widget.controller.position.pixels + viewDelta;
      if (_viewOffset < widget.controller.position.minScrollExtent) {
        _viewOffset = widget.controller.position.minScrollExtent;
      }
      if (_viewOffset > viewMaxScrollExtent) {
        _viewOffset = viewMaxScrollExtent;
      }
      widget.controller.jumpTo(_viewOffset);
    });
  }

  //this function process events when scroll controller changes it's position
  //by scrollController.jumpTo or scrollController.animateTo functions.
  //It can be when user scrolls, drags scrollbar (see line 139)
  //or any other manipulation with scrollController outside this widget
  changePosition(ScrollNotification notification) {
    //if notification was fired when user drags we don't need to update scrollThumb position
    if (_isDragInProcess) {
      return;
    }

    setState(() {
      if (notification is ScrollUpdateNotification) {
        _barOffset += getBarDelta(
          notification.scrollDelta,
          barMaxScrollExtent,
          viewMaxScrollExtent,
        );

        if (_barOffset < barMinScrollExtent) {
          _barOffset = barMinScrollExtent;
        }
        if (_barOffset > barMaxScrollExtent) {
          _barOffset = barMaxScrollExtent;
        }

        _viewOffset += notification.scrollDelta;
        if (_viewOffset < widget.controller.position.minScrollExtent) {
          _viewOffset = widget.controller.position.minScrollExtent;
        }
        if (_viewOffset > viewMaxScrollExtent) {
          _viewOffset = viewMaxScrollExtent;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          changePosition(notification);
        },
        child: new Stack(children: <Widget>[
          widget.child,
          GestureDetector(
              //we've add functions for onVerticalDragStart and onVerticalDragEnd
              //to track when dragging starts and finishes
              onVerticalDragStart: _onVerticalDragStart,
              onVerticalDragUpdate: _onVerticalDragUpdate,
              onVerticalDragEnd: _onVerticalDragEnd,
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.topRight,
                        color: Constants.colorGrisNuevo,
                        height: double.infinity,
                        width: 10.0,
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: _barOffset),
                      child: _buildScrollThumb())
                ],
              )),
        ]));
  }

  Widget _buildScrollThumb() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: new Container(
        alignment: Alignment.topRight,
        height: widget.heightScrollThumb,
        width: 10.0,
        color: Constants.colorMorado,
      ),
    );
  }
}
