class UserRepository
!!!163847.php!!!	__construct(in registry : ManagerRegistry)
        parent::__construct($registry, User::class);
!!!163975.php!!!	add(in entity : User, in flush : bool = true) : void
        $this->_em->persist($entity);
        if ($flush) {
            $this->_em->flush();
        }
!!!164103.php!!!	remove(in entity : User, in flush : bool = true) : void
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
!!!164231.php!!!	upgradePassword(in user : PasswordAuthenticatedUserInterface, in newHashedPassword : string) : void
        if (!$user instanceof User) {
            throw new UnsupportedUserException(sprintf('Instances of "%s" are not supported.', \get_class($user)));
        }

        $user->setPassword($newHashedPassword);
        $this->_em->persist($user);
        $this->_em->flush();
!!!164359.php!!!	findMembers() : User[]
        return $this->createQueryBuilder('u')
            ->andWhere(':role MEMBER OF u.roles')
            ->setParameter('role', 'USER_MEMBER')
            ->getQuery()
            ->getResult();
