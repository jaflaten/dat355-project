class Version20220312105132
!!!150279.php!!!	getDescription() : string
        return '';
!!!150407.php!!!	up(in schema : Schema) : void
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE "user" ADD is_verified BOOLEAN NOT NULL');
!!!150535.php!!!	down(in schema : Schema) : void
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('ALTER TABLE "user" DROP is_verified');
