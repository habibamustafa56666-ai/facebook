import 'package:facebook/core/app_assets.dart';
import 'package:facebook/core/app_theme.dart';
import 'package:facebook/home_screen/widgets/create_post.dart';
import 'package:facebook/home_screen/widgets/create_story.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'FACEBOOK',
            style: TextStyle(
              color: AppTheme.primary,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          actions: [
            IconButton(onPressed:() {}, icon: const ImageIcon(AssetImage(AppAssets.plus))),
            IconButton(onPressed:() {}, icon: const ImageIcon(AssetImage(AppAssets.search))),
            IconButton(onPressed:() {}, icon: const ImageIcon(AssetImage(AppAssets.messenger))),

          ],

          bottom: TabBar(
            tabs: [
            Tab(icon: ImageIcon(AssetImage(AppAssets.home))),
            Tab(icon: ImageIcon(AssetImage(AppAssets.video))),
            Tab(icon: ImageIcon(AssetImage(AppAssets.store))),
            Tab(icon: ImageIcon(AssetImage(AppAssets.account))),
            Tab(icon: ImageIcon(AssetImage(AppAssets.notification))),
            Tab(
              child: CircleAvatar(
                backgroundImage: AssetImage(AppAssets.profile),
              ),
            ),
          ],
          ), // TabBar
        ), // AppBar


        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: StoriesSection(),
            ),
            const SliverToBoxAdapter(
              child: Divider(thickness: 6),
            ),
            const SliverToBoxAdapter(
              child: CreatePost (),
            ),
            const SliverToBoxAdapter(
              child: Divider(thickness: 6),
            ),
          ],
        ),
      ),
    );

  }
}

