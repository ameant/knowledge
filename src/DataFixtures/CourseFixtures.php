<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Course;
use App\Entity\Theme;

class CourseFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {

        $theme1 = $manager->getRepository(Theme::class)->find(1);
        $theme2 = $manager->getRepository(Theme::class)->find(2);
        $theme3 = $manager->getRepository(Theme::class)->find(3);
        $theme4 = $manager->getRepository(Theme::class)->find(4);

        $course = new Course();
        $course->setTheme($theme1)
            ->setName('Cursus d\'initiation à la guitare')
            ->setPrice(50)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin');
        $manager->persist($course);

        $course = new Course();
        $course->setTheme($theme1)
            ->setName('Cursus d\'initiation au piano')
            ->setPrice(50)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin');
        $manager->persist($course);

        $course = new Course();
        $course->setTheme($theme2)
            ->setName('Cursus d\'initiation au développement web')
            ->setPrice(60)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin');
        $manager->persist($course);

        $course = new Course();
        $course->setTheme($theme3)
            ->setName('Cursus d\'initiation au jardinage')
            ->setPrice(30)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin');
        $manager->persist($course);

        $course = new Course();
        $course->setTheme($theme4)
            ->setName('Cursus d\'initiation à la cuisine')
            ->setPrice(44)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin');
        $manager->persist($course);

        $course = new Course();
        $course->setTheme($theme4)
            ->setName('Cursus d\'initiation à l\'art du dressage culinaire')
            ->setPrice(48)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin');
        $manager->persist($course);

        $manager->flush();
    }
}
