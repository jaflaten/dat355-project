class AttachmentRepository
!!!161543.php!!!	__construct(in registry : ManagerRegistry)
        parent::__construct($registry, Attachment::class);
!!!161671.php!!!	add(in entity : Attachment, in flush : bool = true) : void
        $this->_em->persist($entity);
        if ($flush) {
            $this->_em->flush();
        }
!!!161799.php!!!	remove(in entity : Attachment, in flush : bool = true) : void
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
