class SongRepository
!!!163463.php!!!	__construct(in registry : ManagerRegistry)
        parent::__construct($registry, Song::class);
!!!163591.php!!!	add(in entity : Song, in flush : bool = true) : void
        $this->_em->persist($entity);
        if ($flush) {
            $this->_em->flush();
        }
!!!163719.php!!!	remove(in entity : Song, in flush : bool = true) : void
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
