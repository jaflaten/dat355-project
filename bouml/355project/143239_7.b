class Version20220429104952
!!!152583.php!!!	getDescription() : string
        return '';
!!!152711.php!!!	up(in schema : Schema) : void
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE article ADD author_id INT NOT NULL');
        $this->addSql('ALTER TABLE article DROP author');
        $this->addSql('ALTER TABLE article ADD CONSTRAINT FK_23A0E66F675F31B FOREIGN KEY (author_id) REFERENCES "user" (id) NOT DEFERRABLE INITIALLY IMMEDIATE');
        $this->addSql('CREATE INDEX IDX_23A0E66F675F31B ON article (author_id)');
!!!152839.php!!!	down(in schema : Schema) : void
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('ALTER TABLE article DROP CONSTRAINT FK_23A0E66F675F31B');
        $this->addSql('DROP INDEX IDX_23A0E66F675F31B');
        $this->addSql('ALTER TABLE article ADD author VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE article DROP author_id');
