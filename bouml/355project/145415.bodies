class LoginController
!!!156039.php!!!	index(in authenticationUtils : AuthenticationUtils, in request : Request) : Response
        $error = $authenticationUtils->getLastAuthenticationError();
        $lastUsername = $authenticationUtils->getLastUsername();
        return $this->render('login/index.html.twig', [
             'last_username' => $lastUsername,
             'error'         => $error,
          ]);
