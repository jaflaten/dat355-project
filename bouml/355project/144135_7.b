class Version20221207204150
!!!155271.php!!!	getDescription() : string
        return '';
!!!155399.php!!!	up(in schema : Schema) : void
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE "user" ADD tri_voice VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD quadro_voice VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD birthday DATE DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD note VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD phone VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD name VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD surname VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD prev_surname VARCHAR(255) DEFAULT NULL');
!!!155527.php!!!	down(in schema : Schema) : void
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('ALTER TABLE "user" DROP tri_voice');
        $this->addSql('ALTER TABLE "user" DROP quadro_voice');
        $this->addSql('ALTER TABLE "user" DROP birthday');
        $this->addSql('ALTER TABLE "user" DROP note');
        $this->addSql('ALTER TABLE "user" DROP phone');
        $this->addSql('ALTER TABLE "user" DROP name');
        $this->addSql('ALTER TABLE "user" DROP surname');
        $this->addSql('ALTER TABLE "user" DROP prev_surname');
