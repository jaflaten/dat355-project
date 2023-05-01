class Version20220913091747
!!!153735.php!!!	getDescription() : string
        return '';
!!!153863.php!!!	up(in schema : Schema) : void
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SEQUENCE attachment_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE event_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE song_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE TABLE attachment (id INT NOT NULL, song_id INT NOT NULL, name VARCHAR(255) DEFAULT NULL, type INT DEFAULT NULL, link VARCHAR(255) DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE INDEX IDX_795FD9BBA0BDB2F3 ON attachment (song_id)');
        $this->addSql('CREATE TABLE event (id INT NOT NULL, name VARCHAR(255) DEFAULT NULL, date DATE DEFAULT NULL, time_begin TIME(0) WITHOUT TIME ZONE DEFAULT NULL, time_meet TIME(0) WITHOUT TIME ZONE DEFAULT NULL, location VARCHAR(255) DEFAULT NULL, programme_link VARCHAR(255) DEFAULT NULL, invitation_link VARCHAR(255) DEFAULT NULL, note_public TEXT DEFAULT NULL, note_private TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE event_user (event_id INT NOT NULL, user_id INT NOT NULL, PRIMARY KEY(event_id, user_id))');
        $this->addSql('CREATE INDEX IDX_92589AE271F7E88B ON event_user (event_id)');
        $this->addSql('CREATE INDEX IDX_92589AE2A76ED395 ON event_user (user_id)');
        $this->addSql('CREATE TABLE event_song (event_id INT NOT NULL, song_id INT NOT NULL, PRIMARY KEY(event_id, song_id))');
        $this->addSql('CREATE INDEX IDX_2C26A20A71F7E88B ON event_song (event_id)');
        $this->addSql('CREATE INDEX IDX_2C26A20AA0BDB2F3 ON event_song (song_id)');
        $this->addSql('CREATE TABLE song (id INT NOT NULL, number INT DEFAULT NULL, name VARCHAR(255) DEFAULT NULL, author VARCHAR(255) DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('ALTER TABLE attachment ADD CONSTRAINT FK_795FD9BBA0BDB2F3 FOREIGN KEY (song_id) REFERENCES song (id) NOT DEFERRABLE INITIALLY IMMEDIATE');
        $this->addSql('ALTER TABLE event_user ADD CONSTRAINT FK_92589AE271F7E88B FOREIGN KEY (event_id) REFERENCES event (id) ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE');
        $this->addSql('ALTER TABLE event_user ADD CONSTRAINT FK_92589AE2A76ED395 FOREIGN KEY (user_id) REFERENCES "user" (id) ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE');
        $this->addSql('ALTER TABLE event_song ADD CONSTRAINT FK_2C26A20A71F7E88B FOREIGN KEY (event_id) REFERENCES event (id) ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE');
        $this->addSql('ALTER TABLE event_song ADD CONSTRAINT FK_2C26A20AA0BDB2F3 FOREIGN KEY (song_id) REFERENCES song (id) ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE');
!!!153991.php!!!	down(in schema : Schema) : void
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('ALTER TABLE event_user DROP CONSTRAINT FK_92589AE271F7E88B');
        $this->addSql('ALTER TABLE event_song DROP CONSTRAINT FK_2C26A20A71F7E88B');
        $this->addSql('ALTER TABLE attachment DROP CONSTRAINT FK_795FD9BBA0BDB2F3');
        $this->addSql('ALTER TABLE event_song DROP CONSTRAINT FK_2C26A20AA0BDB2F3');
        $this->addSql('DROP SEQUENCE attachment_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE event_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE song_id_seq CASCADE');
        $this->addSql('DROP TABLE attachment');
        $this->addSql('DROP TABLE event');
        $this->addSql('DROP TABLE event_user');
        $this->addSql('DROP TABLE event_song');
        $this->addSql('DROP TABLE song');
