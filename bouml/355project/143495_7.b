class Version20220904134431
!!!153351.php!!!	getDescription() : string
        return '';
!!!153479.php!!!	up(in schema : Schema) : void
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE messages ALTER message_text TYPE TEXT');
        $this->addSql('ALTER TABLE messages ALTER message_text DROP DEFAULT');
        $this->addSql('ALTER TABLE messages ALTER message_text TYPE TEXT');
!!!153607.php!!!	down(in schema : Schema) : void
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('ALTER TABLE messages ALTER message_text TYPE VARCHAR(1500)');
        $this->addSql('ALTER TABLE messages ALTER message_text DROP DEFAULT');
