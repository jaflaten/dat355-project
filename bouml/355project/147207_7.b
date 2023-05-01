class DayMonthBirthdayType
!!!159239.php!!!	configureOptions(in resolver : OptionsResolver)
        parent::configureOptions($resolver);

        $resolver->setDefaults([
            'widget' => 'choice',
            'format' => 'ddMMyyyy',
        ]);
