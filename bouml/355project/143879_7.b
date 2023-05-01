class Version20220913105912
!!!154503.php!!!	getDescription() : string
        return '';
!!!154631.php!!!	up(in schema : Schema) : void
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE event ADD time_begin TIMESTAMP(0) WITHOUT TIME ZONE DEFAULT NULL');
        $this->addSql('ALTER TABLE event ADD time_meet TIMESTAMP(0) WITHOUT TIME ZONE DEFAULT NULL');
!!!154759.php!!!	down(in schema : Schema) : void
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('ALTER TABLE event DROP time_begin');
        $this->addSql('ALTER TABLE event DROP time_meet');
