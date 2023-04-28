class ViewController
!!!156167.php!!!	getHomepage() : Response
        return $this->render( 'index.html.twig');
!!!156295.php!!!	getInfo() : Response
        $articles = $this->articleRepository->findBy(['page' => 'tajnost'], ['lastEdited' => 'DESC']);
        return $this->render( 'information.html.twig', ['articles' => $articles, 'user' => $this->getUser()]);
!!!156423.php!!!	getAboutUs(in request : Request) : Response
        $locale = $request->getLocale();
        $message = $this->messagesRepository->findOneBy(['locale' => $locale, 'messageId' => 'aboutUs']);
        if ($message===null){
            $message = $this->messagesRepository->findOneBy(['locale' => $request->getDefaultLocale(), 'messageId' => 'aboutUs']);
        }
        if ($message===null){
            return $this->showError('not_found');
        }
        return $this->render( 'page.html.twig', ['message' => $message]);
!!!156551.php!!!	getChoirmasters(in request : Request) : Response
        $locale = $request->getLocale();
        $message = $this->messagesRepository->findOneBy(['locale' => $locale, 'messageId' => 'choirmasters']);
        if ($message===null){
            $message = $this->messagesRepository->findOneBy(['locale' => $request->getDefaultLocale(), 'messageId' => 'choimasters']);
        }
        if ($message===null){
            return $this->showError('not_found');
        }
        return $this->render( 'page.html.twig', ['message' => $message]);
!!!156679.php!!!	getRepertoir(in request : Request) : Response
        $locale = $request->getLocale();
        $message = $this->messagesRepository->findOneBy(['locale' => $locale, 'messageId' => 'repertoir']);
        if ($message===null){
            $message = $this->messagesRepository->findOneBy(['locale' => $request->getDefaultLocale(), 'messageId' => 'repertoir']);
        }
        if ($message===null){
            return $this->showError('not_found');
        }
        return $this->render( 'page.html.twig', ['message' => $message]);
!!!156807.php!!!	getHistory(in request : Request) : Response
        $locale = $request->getLocale();
        $message = $this->messagesRepository->findOneBy(['locale' => $locale, 'messageId' => 'history']);
        if ($message===null){
            $message = $this->messagesRepository->findOneBy(['locale' => $request->getDefaultLocale(), 'messageId' => 'history']);
        }
        if ($message===null){
            return $this->showError('not_found');
        }
        return $this->render( 'page.html.twig', ['message' => $message]);
!!!156935.php!!!	getCds(in request : Request) : Response
        $locale = $request->getLocale();
        $message = $this->messagesRepository->findOneBy(['locale' => $locale, 'messageId' => 'cds']);
        if ($message===null){
            $message = $this->messagesRepository->findOneBy(['locale' => $request->getDefaultLocale(), 'messageId' => 'cds']);
        }
        if ($message===null){
            return $this->showError('not_found');
        }
        return $this->render( 'page.html.twig', ['message' => $message]);
!!!157063.php!!!	getAudite(in request : Request) : Response
        $locale = $request->getLocale();
        $message = $this->messagesRepository->findOneBy(['locale' => $locale, 'messageId' => 'audite']);
        if ($message===null){
            $message = $this->messagesRepository->findOneBy(['locale' => $request->getDefaultLocale(), 'messageId' => 'audite']);
        }
        if ($message===null){
            return $this->showError('not_found');
        }
        return $this->render( 'page.html.twig', ['message' => $message]);
!!!157191.php!!!	getChronicle(in request : Request) : Response
        $locale = $request->getLocale();
        $message = $this->messagesRepository->findOneBy(['locale' => $locale, 'messageId' => 'chronicle']);
        if ($message===null){
            $message = $this->messagesRepository->findOneBy(['locale' => $request->getDefaultLocale(), 'messageId' => 'chronicle']);
        }
        if ($message===null){
            return $this->showError('not_found');
        }
        return $this->render( 'page.html.twig', ['message' => $message]);
!!!157319.php!!!	getContacts(in request : Request) : Response
        $locale = $request->getLocale();
        $message = $this->messagesRepository->findOneBy(['locale' => $locale, 'messageId' => 'contacts']);
        if ($message===null){
            $message = $this->messagesRepository->findOneBy(['locale' => $request->getDefaultLocale(), 'messageId' => 'contacts']);
        }
        if ($message===null){
            return $this->showError('not_found');
        }
        return $this->render( 'page.html.twig', ['message' => $message]);
!!!157447.php!!!	getCalendar(in request : Request) : Response
        $events = $this->eventRepository->findNewerThan(new \DateTime('now'), 'date', 'ASC');
        return $this->render( 'calendar/calendar.html.twig', ['events' => $events, 'buttons' => 'calendar/calendar_actual.html.twig']);
!!!157575.php!!!	getCalendarOld(in request : Request) : Response
        $events = $this->eventRepository->findOlderThan(new \DateTime('now'), 'date', 'DESC');
        return $this->render( 'calendar/calendar.html.twig', ['events' => $events, 'buttons' => 'calendar/calendar_old.html.twig']);
!!!157703.php!!!	getSongs(in request : Request) : Response
        $songs = $this->songRepository->findAll();
        return $this->render( 'songs.html.twig', ['songs' => $songs]);
