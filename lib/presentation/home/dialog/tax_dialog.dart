import 'package:flutter/material.dart';
import 'package:flutter_koperasi_app/core/extensions/build_context_ext.dart';

import '../../../core/constants/colors.dart';

class TaxDialog extends StatelessWidget {
  const TaxDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Stack(
        alignment: Alignment.center,
        children: [
          const Text(
            'PAJAK',
            style: TextStyle(
              color: AppColors.orangeLight,
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(
                Icons.cancel,
                color: AppColors.orangeLight,
                size: 30.0,
              ),
            ),
          ),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Text('Pajak Pertambahan Nilai'),
            subtitle: const Text('tarif pajak (11%)'),
            contentPadding: EdgeInsets.zero,
            textColor: AppColors.orangeLight,
            trailing: Checkbox(
              value: true,
              onChanged: (value) {},
            ),
            onTap: () {
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
