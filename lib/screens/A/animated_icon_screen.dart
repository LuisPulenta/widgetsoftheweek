import 'package:flutter/material.dart';

class AnimatedIconScreen extends StatefulWidget {
  const AnimatedIconScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedIconScreen> createState() => _AnimatedIconScreenState();
}

class _AnimatedIconScreenState extends State<AnimatedIconScreen>
    with TickerProviderStateMixin {
  bool _flag = true;
  late Animation<double> _myAnimation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _myAnimation = CurvedAnimation(curve: Curves.linear, parent: _controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedIcon"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //---------------------------------------------------------------------
            const Text("play_pause - pause_play"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.play_pause,
                  size: 60,
                ),
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.pause_play,
                  size: 60,
                ),
              ],
            ),
            //---------------------------------------------------------------------
            const Text("home_menu - menu_home"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.home_menu,
                  size: 60,
                ),
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.menu_home,
                  size: 60,
                ),
              ],
            ),
            //---------------------------------------------------------------------
            const Text("add_event - event_add"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.add_event,
                  size: 60,
                ),
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.event_add,
                  size: 60,
                ),
              ],
            ),
            //---------------------------------------------------------------------
            const Text("arrow_menu - menu_arrow"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.arrow_menu,
                  size: 60,
                ),
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.menu_arrow,
                  size: 60,
                ),
              ],
            ),
            //---------------------------------------------------------------------
            const Text("ellipsis_search - search_ellipsis"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.ellipsis_search,
                  size: 60,
                ),
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.search_ellipsis,
                  size: 60,
                ),
              ],
            ),
            //---------------------------------------------------------------------
            const Text("list_view - view_list"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.list_view,
                  size: 60,
                ),
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.view_list,
                  size: 60,
                ),
              ],
            ),
            //---------------------------------------------------------------------
            const Text("close_menu - menu_close"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.close_menu,
                  color: Colors.purple,
                  size: 60,
                ),
                AnimatedIcon(
                  progress: _myAnimation,
                  icon: AnimatedIcons.menu_close,
                  color: Colors.red,
                  size: 60,
                ),
              ],
            ),
            ElevatedButton(
              child: const Text('Animar'),
              onPressed: () {
                if (_flag) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
                _flag = !_flag;
              },
            ),
          ],
        ),
      ),
    );
  }
}
