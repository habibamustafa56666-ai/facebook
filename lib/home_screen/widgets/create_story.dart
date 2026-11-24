import 'package:facebook/core/app_assets.dart';
import 'package:facebook/core/app_theme.dart';

import 'package:material_ui/material_ui.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Image.asset(
                  AppAssets.profile,
                  width: 120,
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: AppTheme.white,
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  radius: 17,
                  backgroundColor: AppTheme.primary,
                  child: Icon(Icons.add, color: AppTheme.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Create a story',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Positioned.fill(
              child: Image.asset(
                AppAssets.profile,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppTheme.primary, width: 3),
              ),
              child: CircleAvatar(
                radius: 17,
                backgroundImage: AssetImage(AppAssets.profile),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 20,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          return index == 0
              ? const CreateStory()
              : const StoryItem();
        },
      ),
    );
  }
}
