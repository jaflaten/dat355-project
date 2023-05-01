class ArticleRepository
!!!161159.php!!!	__construct(in registry : ManagerRegistry)
        parent::__construct($registry, Article::class);
!!!161287.php!!!	add(in entity : Article, in flush : bool = true) : void
        $this->_em->persist($entity);
        if ($flush) {
            $this->_em->flush();
        }
!!!161415.php!!!	remove(in entity : Article, in flush : bool = true) : void
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
