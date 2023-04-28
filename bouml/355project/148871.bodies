class EventRepository
!!!161927.php!!!	__construct(in registry : ManagerRegistry)
        parent::__construct($registry, Event::class);
!!!162055.php!!!	add(in entity : Event, in flush : bool = true) : void
        $this->_em->persist($entity);
        if ($flush) {
            $this->_em->flush();
        }
!!!162183.php!!!	remove(in entity : Event, in flush : bool = true) : void
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
!!!162311.php!!!	findNewerThan(in date : , in sort : , in order :  = null) : Event[]
        return $this->createQueryBuilder('e')
            ->andWhere('e.date >= :date')
            ->setParameter('date', $date)
            ->orderBy('e.' . $sort, $order)
            ->getQuery()
            ->getResult()
        ;
!!!162439.php!!!	findOlderThan(in date : , in sort : , in order :  = null) : Event[]
        return $this->createQueryBuilder('e')
            ->andWhere('e.date < :date')
            ->setParameter('date', $date)
            ->orderBy('e.' . $sort, $order)
            ->getQuery()
            ->getResult()
            ;
