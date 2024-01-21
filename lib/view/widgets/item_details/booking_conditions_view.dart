
import 'package:flutter/material.dart';

import '../../../core/constant/app_styles.dart';

class BookingConditionsView extends StatelessWidget{

   const BookingConditionsView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 16.0),
            Text(
              'شروط الإستأجار',
              textAlign: TextAlign.center,
              style: AppStyles.style12,
            ),
            SizedBox(height: 14.0),
            SizedBox(
              width: 334,
              height: 338,
              child: Text(
                  'الإيجار والتأمين:\nالمبلغ السنوي للإيجار: 20000 ريال سعودي.\nتأمين مسترد قابل للتجديد بقيمة [10000] ريال سعودي.\nالمدة الزمنية:\nبداية العقد: 1/1/2024\nنهاية العقد: 1/1/2025\nالمسؤوليات المالية:\nالمستأجر مسؤول عن سداد جميع الفواتير المتعلقة بالمرافق (كهرباء، ماء، غاز).\nالاستخدام السكني:\nالشقة مخصصة للاستخدام السكني فقط ويجب استخدامها بطريقة قانونية وآمنة.\nالصيانة والإصلاحات:\nالشركة مسؤولة عن الصيانة الأساسية، والمستأجر مسؤول عن الصيانة اليومية وأية إصلاحات تكون ناتجة عن سوء استخدامه.\n\nشروط الإلغاء:\nيمكن لأي طرف إلغاء العقد بإشعار مسبق بـ شهر، ويتم تحديد غرامة5000 ر.س في حالة إلغاء المستأجر قبل انتهاء فترة العقد.\n\nالصفة السكنية:\nيسمح بالسكن لعدد [عدد الأشخاص المسموح بهم] أشخاص فقط.\nتأكيد بالكتاب:\nيجب على الطرفين تأكيد العقد بتوقيعهما بصفة رسمية.\n',
                  textAlign: TextAlign.right,
                  style: AppStyles.style10
              ),
            )
          ],
        ),

    );
  }
}
