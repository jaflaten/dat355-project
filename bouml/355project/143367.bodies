class Version20220429110645
!!!152967.php!!!	getDescription() : string
        return '';
!!!153095.php!!!	up(in schema : Schema) : void
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE article ADD page VARCHAR(255) DEFAULT NULL');
        $this->addSql('alter table messages alter column message_text type text using message_text::text');
!!!153223.php!!!	down(in schema : Schema) : void
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('ALTER TABLE article DROP page');
