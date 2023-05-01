class Version20220406152702
!!!151815.php!!!	getDescription() : string
        return '';
!!!151943.php!!!	up(in schema : Schema) : void
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE user_role (user_id INT NOT NULL, role_id INT NOT NULL, PRIMARY KEY(user_id, role_id))');
        $this->addSql('CREATE INDEX IDX_2DE8C6A3A76ED395 ON user_role (user_id)');
        $this->addSql('CREATE INDEX IDX_2DE8C6A3D60322AC ON user_role (role_id)');
        $this->addSql('ALTER TABLE user_role ADD CONSTRAINT FK_2DE8C6A3A76ED395 FOREIGN KEY (user_id) REFERENCES "user" (id) ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE');
        $this->addSql('ALTER TABLE user_role ADD CONSTRAINT FK_2DE8C6A3D60322AC FOREIGN KEY (role_id) REFERENCES role (id) ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE');
        $this->addSql('ALTER TABLE "user" DROP CONSTRAINT fk_8d93d64938c751c4');
        $this->addSql('DROP INDEX idx_8d93d64938c751c4');
        $this->addSql('ALTER TABLE "user" DROP roles_id');
!!!152071.php!!!	down(in schema : Schema) : void
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('DROP TABLE user_role');
        $this->addSql('ALTER TABLE "user" ADD roles_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD CONSTRAINT fk_8d93d64938c751c4 FOREIGN KEY (roles_id) REFERENCES role (id) NOT DEFERRABLE INITIALLY IMMEDIATE');
        $this->addSql('CREATE INDEX idx_8d93d64938c751c4 ON "user" (roles_id)');
