class Version20230216114645
!!!155655.php!!!	getDescription() : string
        return '';
!!!155783.php!!!	up(in schema : Schema) : void
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE "user" ADD last_edited TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP');
!!!155911.php!!!	down(in schema : Schema) : void
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('ALTER TABLE "user" DROP last_edited');
