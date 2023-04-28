class MessagesExport
!!!157959.php!!!	generateMessagesFile(in messagesRepository : MessagesRepository, in locale :  = "cs")
        $mesFile = fopen("./translations/messages." . $locale . ".yaml", "w");
        $result = $messagesRepository->findAll();
        foreach ($result as $res){
            if ($res->getLocale() === $locale)
                fwrite($mesFile, $res->getMessageId() . ': "' . $res->getMessageText() . '"' . PHP_EOL);
        }
