import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomButtons extends StatelessWidget {
  final Function onClearChatTap;
  final Function onEncryptionTap;
  final Function onExitCommunityTap;
  final Function onReportTap;

  const CustomButtons({
    super.key,
    required this.onClearChatTap,
    required this.onEncryptionTap,
    required this.onExitCommunityTap,
    required this.onReportTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildButtonRow(
                'Clear Chat', Iconsax.trash, Colors.black, onClearChatTap),
            _buildButtonRow(
                'Encryption', Iconsax.lock, Colors.black, onEncryptionTap),
            _buildButtonRow('Exit Community', Iconsax.logout, Colors.red,
                onExitCommunityTap),
            _buildButtonRow('Report', Iconsax.dislike, Colors.red, onReportTap),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonRow(
      String text, IconData icon, Color color, Function onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () => onTap(),
        child: Row(
          children: [
            Icon(icon, color: color),
            const SizedBox(width: 10.0),
            Text(
              text,
              style: TextStyle(
                fontSize: 20.0,
                color: color,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
