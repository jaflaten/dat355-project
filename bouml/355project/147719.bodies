class RegistrationFormType
!!!159879.php!!!	buildForm(in builder : FormBuilderInterface, in options : ) : void
        $builder
            ->add('email', TextType::class, [
                'bulma_icon' => [
                    'icon' => 'envelope',
                    'position' => 'left',
                ],
                'attr' => ['class' => 'is-medium'],
                ])
            ->add('password', PasswordType::class, [
                // instead of being set onto the object directly,
                // this is read and encoded in the controller
                'bulma_icon' => [
                    'icon' => 'lock',
                    'position' => 'left',
                ],
                'label' => 'forms.user.password',
//                'mapped' => false,
                'attr' => ['autocomplete' => 'new-password',
                           'class' => 'is-medium'],
                'constraints' => [
//                    new NotBlank([
//                        'message' => 'Please enter a password',
//                    ]),
                    new Length([
                        'min' => 6,
                        'minMessage' => 'forms.user.password_short',
                        // max length allowed by Symfony for security reasons
                        'max' => 4096,
                    ]),
                ],
            ])
            ->add('agreeTerms', CheckboxType::class, [
                'mapped' => false,
                'constraints' => [
                    new IsTrue([
                        'message' => 'You should agree to our terms.',
                    ]),
                ],
            ])
            ->add('save', SubmitType::class)
        ;
!!!160007.php!!!	configureOptions(in resolver : OptionsResolver) : void
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
