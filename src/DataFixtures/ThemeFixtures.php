<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Theme;

class ThemeFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $theme = new Theme();
        $theme->setName('Musique');
        $manager->persist($theme);

        $theme = new Theme();
        $theme->setName('Informatique');
        $manager->persist($theme);

        $theme = new Theme();
        $theme->setName('Jardinage');
        $manager->persist($theme);

        $theme = new Theme();
        $theme->setName('Cuisine');
        $manager->persist($theme);

        $manager->flush();
    }
}
