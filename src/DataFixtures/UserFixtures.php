<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\User;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class UserFixtures extends Fixture
{
    private UserPasswordHasherInterface $hasher;

    public function __construct(UserPasswordHasherInterface $hasher)
    {
        $this->hasher = $hasher;
    }

    public function load(ObjectManager $manager): void
    {
        $user = new User();
        $user->setEmail('knowledge@example.com')
            ->setRoles(['ROLE_ADMIN'])
            ->setPassword($this->hasher->hasherPassword($user, 'admin'))
            ->setName('Admin')
            ->setIsVerified(false);
        $manager->persist($user);

        $user = new User();
        $user->setEmail('janedoe@example.com')
            ->setRoles(['ROLE_USER'])
            ->setPassword($this->hasher->hasherPassword($user, 'jdjdjd'))
            ->setName('Jane Doe')
            ->setIsVerified(false);
        $manager->persist($user);

        $manager->flush();
    }
}
