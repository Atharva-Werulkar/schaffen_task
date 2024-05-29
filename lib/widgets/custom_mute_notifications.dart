import 'package:flutter/material.dart';

class CustomMuteNotifications extends StatefulWidget {
  final bool initialSwitchValue;
  final Function(bool) onSwitchChanged;

  const CustomMuteNotifications({
    super.key,
    required this.initialSwitchValue,
    required this.onSwitchChanged,
  });

  @override
  _CustomMuteNotificationsState createState() =>
      _CustomMuteNotificationsState();
}

class _CustomMuteNotificationsState extends State<CustomMuteNotifications> {
  bool _isSwitched = false;

  @override
  void initState() {
    super.initState();
    _isSwitched = widget.initialSwitchValue;
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'mute notification',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Switch(
              value: _isSwitched,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
                widget.onSwitchChanged(value);
              },
              activeColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
