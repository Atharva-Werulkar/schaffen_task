import 'package:flutter/material.dart';
import 'package:schaffen_task/widgets/custom_buttons.dart';
import 'package:schaffen_task/widgets/custom_categories.dart';
import 'package:schaffen_task/widgets/custom_media_docs_links.dart';
import 'package:schaffen_task/widgets/custom_member_list.dart';
import 'package:schaffen_task/widgets/custom_members.dart';
import 'package:schaffen_task/widgets/custom_mute_notifications.dart';
import 'package:schaffen_task/widgets/custom_appbar.dart';
import 'package:schaffen_task/widgets/custom_discription.dart';
import 'package:schaffen_task/widgets/custom_name_rating_share_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            CustomAppBar(
              onBackButtonPressed: () {
                Navigator.pop(context);
              },
            ),
            const CustomNameWithRatingAndShareButton(
              name: 'The Weeknd',
              membersCount: 'Community • +11K Members',
              assetPath: 'assets/images/share.png',
            ),
            const CustomDescription(
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                  'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                  'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            ),
            CustomCategories(
              itemCount: 5,
              onChipTap: (index) {
                //show all chips
              },
            ),
            CustomMediaDocsAndLinks(
              itemCount: 10,
              onItemTap: (index) {
                // handle item tap
              },
              onIconPressed: () {
                // handle icon press
              },
            ),
            CustomMuteNotifications(
              initialSwitchValue: false,
              onSwitchChanged: (value) {
                // handle switch change
              },
            ),
            CustomButtons(
              onClearChatTap: () {
                // handle clear chat tap
              },
              onEncryptionTap: () {
                // handle encryption tap
              },
              onExitCommunityTap: () {
                // handle exit community tap
              },
              onReportTap: () {
                // handle report tap
              },
            ),
            CustomMembers(
              onSearchPressed: (isSearching) {
                // handle search button press
              },
            ),
            CustomMemberList(
              itemCount: 10, // replace with the actual number of members
              isFollowing: List.filled(
                  10, false), // replace with the actual following status
            ),
          ],
        ),
      ),
    );
  }
}
