import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class EventLocationLinkWidget extends StatelessWidget {
  const EventLocationLinkWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.placeName,
    this.mapUrl,
  });

  final IconData icon;
  final String label;
  final String placeName;
  final String? mapUrl;

  // Method to execute external URL navigation securely
  Future<void> _openMapLink(BuildContext context) async {
    final Uri url = Uri.parse(mapUrl!.trim());
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: .inAppBrowserView);
      } else {
        if (context.mounted) {
          context.showSnackBar("لا يمكن فتح هذا الرابط حالياً", isError: true);
          context.pop();
        }
      }
    } catch (_) {
      if (context.mounted) {
        context.showSnackBar("رابط الموقع غير صالح", isError: true);
        context.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Determine if we have a valid link to show
    final bool hasValidLink = mapUrl != null && mapUrl!.trim().isNotEmpty;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20),
          const Gap(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: context.theme.textTheme.titleLarge),

                if (hasValidLink) ...[
                  InkWell(
                    onTap: () => _openMapLink(context),
                    borderRadius: BorderRadius.circular(4),
                    child: Text(
                      placeName,
                      style: context.theme.textTheme.titleSmall?.copyWith(
                        color: Colors.blue.shade700,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ] else ...[
                  // Displays the text if mapUrl is null
                  Text(placeName, style: context.theme.textTheme.titleSmall),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
