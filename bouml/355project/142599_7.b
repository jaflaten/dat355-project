class Version20220401131945
!!!150663.php!!!	getDescription() : string
        return '';
!!!150791.php!!!	up(in schema : Schema) : void
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SEQUENCE messages_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE TABLE messages (id INT NOT NULL, locale VARCHAR(255) NOT NULL, message_id VARCHAR(255) NOT NULL, message_text VARCHAR(1500) DEFAULT NULL, page VARCHAR(255) DEFAULT NULL, PRIMARY KEY(id))');
!!!150919.php!!!	down(in schema : Schema) : void
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('DROP SEQUENCE messages_id_seq CASCADE');
        $this->addSql('DROP TABLE messages');
