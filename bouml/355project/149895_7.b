class SongType
!!!165127.php!!!	buildForm(in builder : FormBuilderInterface, in options : )
        $builder
            -> add('number', NumberType::class)
            -> add('name', TextType::class)
            -> add('author', TextType::class)
            -> add('ulozit', SubmitType::class, ['label' => 'uložit']);

!!!165255.php!!!	configureOptions(in resolver : OptionsResolver) : void
        $resolver->setDefaults([
            'data_class' => Song::class,
        ]);
