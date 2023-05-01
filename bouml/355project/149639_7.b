class EventType
!!!164871.php!!!	buildForm(in builder : FormBuilderInterface, in options : )
        $builder
            -> add('name', TextType::class, ['label' => 'Název'])
//            -> add('date', DateType::class, ['widget' => 'single_text', 'format' => 'dd-MM-yyyy', 'html5' => false])
            -> add('date', DateType::class)
            -> add('timeBegin', TimeType::class, ['required' => false])
            -> add('timeMeet', TimeType::class, ['required' => false])
            -> add('location', TextType::class, ['required' => false])
            -> add('songs', EntityType::class, ['label' => 'Skladby:', 'class' => Song::class, 'multiple' => true, 'expanded' => true, 'required' => false, 'invalid_message' => 'Pole skladeb je špatně, pravděpodovně některá id skladeb neexistují.'])
            -> add('programmeLink', TextType::class, ['required' => false])
            -> add('invitationLink', TextType::class, ['required' => false])
            -> add('notePublic', TextType::class, ['required' => false])
            -> add('notePrivate', TextType::class, ['required' => false])
            -> add('ulozit', SubmitType::class, ['label' => 'uložit']);

!!!164999.php!!!	configureOptions(in resolver : OptionsResolver) : void
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
