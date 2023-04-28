class RoleRepository
!!!162951.php!!!	__construct(in registry : ManagerRegistry)
        parent::__construct($registry, Role::class);
!!!163079.php!!!	add(in entity : Role, in flush : bool = true) : void
        $this->_em->persist($entity);
        if ($flush) {
            $this->_em->flush();
        }
!!!163207.php!!!	remove(in entity : Role, in flush : bool = true) : void
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
