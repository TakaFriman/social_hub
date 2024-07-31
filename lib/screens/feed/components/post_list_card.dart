import 'package:flutter/material.dart';
import 'package:social_hub/ui/ui.dart';

class PostListCard extends StatelessWidget {
  const PostListCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Музыка 90-х',
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        'Вчера в 19:12',
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'Сам пост картинкии тд',
              style: theme.textTheme.titleSmall,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'лайки',
                      style: theme.textTheme.titleSmall,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'комментарии',
                      style: theme.textTheme.titleSmall,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'репосты',
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
                Text(
                  'просмотры',
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
