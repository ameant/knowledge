<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Lesson;
use App\Entity\Course;

class LessonFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $course1 = $manager->getRepository(Course::class)->find(1);
        $course2 = $manager->getRepository(Course::class)->find(2);
        $course3 = $manager->getRepository(Course::class)->find(3);
        $course4 = $manager->getRepository(Course::class)->find(4);
        $course5 = $manager->getRepository(Course::class)->find(5);
        $course6 = $manager->getRepository(Course::class)->find(6);

        $lesson = new Lesson();
        $lesson->setCourse($course1)
            ->setName('Leçon n°1 : Découverte de l\’instrument')
            ->setPrice(26)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin')
            ->setContent('Vidéo leçon 1');
        $manager->persist($lesson);

        $lesson = new Lesson();
        $lesson->setCourse($course1)
            ->setName('Leçon n°2 : Les accords et les gammes')
            ->setPrice(26)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin')
            ->setContent('Vidéo leçon 2');
        $manager->persist($lesson);

        $lesson = new Lesson();
        $lesson->setCourse($course2)
            ->setName('Leçon n°1 : Découverte de l\’instrument')
            ->setPrice(26)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin')
            ->setContent('Vidéo leçon 1');
        $manager->persist($lesson);

        $lesson = new Lesson();
        $lesson->setCourse($course2)
            ->setName('Leçon n°2 : Les accords et les gammes')
            ->setPrice(26)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin')
            ->setContent('Vidéo leçon 2');
        $manager->persist($lesson);

        $lesson = new Lesson();
        $lesson->setCourse($course3)
            ->setName('Leçon n°1 : Les langages Html et CSS')
            ->setPrice(32)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin')
            ->setContent('Vidéo leçon 1');
        $manager->persist($lesson);

        $lesson = new Lesson();
        $lesson->setCourse($course3)
            ->setName('Leçon n°2 : Dynamiser votre site avec Javascript')
            ->setPrice(32)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin')
            ->setContent('Vidéo leçon 2');
        $manager->persist($lesson);

        $lesson = new Lesson();
        $lesson->setCourse($course4)
            ->setName('Leçon n°1 : Les outils du jardinier')
            ->setPrice(16)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin')
            ->setContent('Vidéo leçon 1');
        $manager->persist($lesson);

        $lesson = new Lesson();
        $lesson->setCourse($course4)
            ->setName('Leçon n°2 : Jardiner avec la lune')
            ->setPrice(16)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin')
            ->setContent('Vidéo leçon 2');
        $manager->persist($lesson);

        $lesson = new Lesson();
        $lesson->setCourse($course5)
            ->setName('Leçon n°1 : Les modes de cuisson')
            ->setPrice(23)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin')
            ->setContent('Vidéo leçon 1');
        $manager->persist($lesson);

        $lesson = new Lesson();
        $lesson->setCourse($course5)
            ->setName('Leçon n°2 : Les saveurs')
            ->setPrice(23)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin')
            ->setContent('Vidéo leçon 2');
        $manager->persist($lesson);

        $lesson = new Lesson();
        $lesson->setCourse($course6)
            ->setName('Leçon n°1 : Mettre en œuvre le style dans l\’assiette')
            ->setPrice(26)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin')
            ->setContent('Vidéo leçon 1');
        $manager->persist($lesson);

        $lesson = new Lesson();
        $lesson->setCourse($course6)
            ->setName('Leçon n°2 : Harmoniser un repas à quatre plats')
            ->setPrice(26)
            ->setCreatedAt(new \DateTimeImmutable())
            ->setUpdatedAt(new \DateTimeImmutable())
            ->setCreatedBy('Admin')
            ->setUpdatedBy('Admin')
            ->setContent('Vidéo leçon 2');
        $manager->persist($lesson);

        $manager->flush();
    }
}
