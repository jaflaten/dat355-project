class PasswordTypeExtension
!!!159367.php!!!	buildView(in view : FormView, in form : FormInterface, in options : array)
        if (isset($options['bulma_icon'])) {
            $view->vars['bulma_icon'] = $options['bulma_icon'];
        }
!!!159495.php!!!	configureOptions(in resolver : OptionsResolver)
        $resolver->setDefined('bulma_icon');
        $resolver->setAllowedTypes('bulma_icon', 'array');
!!!159623.php!!!	getExtendedType() : string
        return PasswordType::class;
!!!159751.php!!!	getExtendedTypes() : iterable
        return [PasswordType::class];
