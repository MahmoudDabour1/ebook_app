import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/book_details_response_model.dart';
import 'button_link_item.dart';

class LinksButtons extends StatelessWidget {
  final BookDetailsResponseModel? bookDetailsResponseModel;

  const LinksButtons({super.key, this.bookDetailsResponseModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(8),
        Text(
          "Links: ",
          style: AppTextStyles.font18DarkBlueBold,
        ),
        verticalSpace(16),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ButtonLinkItem(
                  title: "Preview Link",
                  onTap: () async {
                    Uri url = Uri.parse(
                        bookDetailsResponseModel?.volumeInfo?.previewLink ??
                            "https://www.google.com");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      );
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ),
            ),
            bookDetailsResponseModel?.saleInfo?.buyLink==null? Expanded(
              child: ButtonLinkItem(
                title: "Buy Link",
                onTap: () async {
                  Uri url = Uri.parse(
                      bookDetailsResponseModel?.saleInfo?.buyLink ??
                          "https://www.google.com");
                  if (await canLaunchUrl(url)) {
                    await launchUrl(
                      url,
                      mode: LaunchMode.externalApplication,
                    );
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
            ):SizedBox.shrink(),
          ],
        ),
        verticalSpace(8),
        bookDetailsResponseModel?.accessInfo?.pdf?.isAvailable ==true
            ? ButtonLinkItem(
                title: "Pdf Download Link",
                onTap: () async {
                  Uri url = Uri.parse(
                      bookDetailsResponseModel?.accessInfo?.pdf?.downloadLink ??
                          "https://www.google.com");
                  if (await canLaunchUrl(url)) {
                    await launchUrl(
                      url,
                      mode: LaunchMode.externalApplication,
                    );
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              )
            : SizedBox.shrink(),
        verticalSpace(16),
      ],
    );
  }
}
