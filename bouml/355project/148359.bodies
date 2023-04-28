class UserType
!!!160903.php!!!	buildForm(in builder : FormBuilderInterface, in options : )
       $builder
           -> add('name', TextType::class, ['label' => 'form.name', 'required' => false])
           -> add('surname', TextType::class, ['label' => 'form.surname', 'required' => false])
           -> add('prevSurname', TextType::class, ['label' => 'form.birthName', 'required' => false])
           -> add('email', TextType::class, ['label' => 'e-mail'])
           -> add('phone', TextType::class, ['label' => 'form.phoneNumber', 'required' => false])
           -> add('triVoice', ChoiceType::class, ['choices' => ['form.triVoice.1' => '1. hlas', 'form.triVoice.2' => '2. hlas', 'form.triVoice.3' => '3. hlas'], 'label' => 'form.triVoice.label', 'required' => false])
           -> add('quadroVoice', ChoiceType::class, ['choices' => ['form.quadroVoice.1' => '1. soprán', 'form.quadroVoice.2' => '2. soprán', 'form.quadroVoice.3' => '1. alt', 'form.quadroVoice.4' => '2. alt', 'form.quadroVoice.5' => '1. tenor', 'form.quadroVoice.6' => '2. tenor', 'form.quadroVoice.7' => '1. bas', 'form.quadroVoice.8' => '2. bas',], 'label' => 'form.quadroVoice.label', 'required' => false])
           -> add('note', TextType::class, ['label' => 'form.note', 'required' => false])
//           -> add('photo', TextType::class, ['label' => 'URL fotky', 'required' => false, 'empty_data' => 'https://campussafetyconference.com/wp-content/uploads/2020/08/iStock-476085198.jpg'])
//           -> add('roles', EntityType::class, ['label' => 'Role:', 'class' => Role::class, 'multiple' => true, 'expanded' => true, 'required' => false, 'invalid_message' => 'Pole rolí je špatně, pravděpodovně některé id rolí neexistují.'])
           -> add('birthday', DayMonthBirthdayType::class,
               ['label' => 'form.birthday', 'required' => false,
                   'translation_domain' => 'messages',
//                   'widget' => 'single_text', 'format' => 'Y-m-d', 'html5' => false
//                    'attr' => ['type' => 'date',
//                        'pattern' => '[0-9]{4}-[0-9]{2}-[0-9]{2}',],
               ])
           -> add('newPassword', TextType::class, ['label' => 'form.newPassword', 'required' => false, 'mapped' => false])
           -> add('save', SubmitType::class, ['label' => 'form.save']);
!!!161031.php!!!	configureOptions(in resolver : OptionsResolver) : void
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
