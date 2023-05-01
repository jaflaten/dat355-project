class MessagesRepository
!!!162567.php!!!	__construct(in registry : ManagerRegistry)
        parent::__construct($registry, Messages::class);
!!!162695.php!!!	add(in entity : Messages, in flush : bool = true) : void
        $this->_em->persist($entity);
        if ($flush) {
            $this->_em->flush();
        }
!!!162823.php!!!	remove(in entity : Messages, in flush : bool = true) : void
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
