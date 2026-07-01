import 'package:enjaz/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GenderSelectorWidget extends FormField<String> {
  GenderSelectorWidget({
    super.key,
    required Function(String) onChanged,
    super.initialValue,
  }) : super(
         validator: (value) {
           if (value == null || value.isEmpty) {
             return 'الرجاء اختيار الجنس';
           }
           return null;
         },

         builder: (FormFieldState<String> state) {
           return Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 children: [
                   Expanded(
                     child: GestureDetector(
                       onTap: () {
                         state.didChange('ذكر');
                         onChanged('ذكر');
                       },
                       child: Container(
                         padding: EdgeInsets.symmetric(vertical: 14),
                         decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius: BorderRadius.circular(12),
                           border: Border.all(
                             color: state.hasError
                                 ? Colors.red
                                 : state.value == 'ذكر'
                                 ? AppColors.primary
                                 : Color(0xFF94A3B8),
                             width: 1.5,
                           ),
                         ),
                         child: Center(child: Text("ذكر")),
                       ),
                     ),
                   ),

                   Gap(10),

                   Expanded(
                     child: GestureDetector(
                       onTap: () {
                         state.didChange('أنثى');
                         onChanged('أنثى');
                       },
                       child: Container(
                         padding: EdgeInsets.symmetric(vertical: 14),
                         decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius: BorderRadius.circular(12),
                           border: Border.all(
                             color: state.hasError
                                 ? Colors.red
                                 : state.value == 'أنثى'
                                 ? AppColors.primary
                                 : Color(0xFF94A3B8),
                             width: 1.5,
                           ),
                         ),
                         child: Center(child: Text("أنثى")),
                       ),
                     ),
                   ),
                 ],
               ),

               if (state.hasError)
                 Padding(
                   padding: const EdgeInsets.only(top: 8),
                   child: Text(
                     state.errorText!,
                     style: TextStyle(color: Colors.red, fontSize: 12),
                   ),
                 ),
             ],
           );
         },
       );
}
