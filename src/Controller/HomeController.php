<?php

namespace App\Controller;

use App\Repository\ThemeRepository;
use App\Repository\CourseRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="app_home")
     */
    public function index(ThemeRepository $themeRepository, CourseRepository $courseRepository): Response
    {
        $themes = $themeRepository->findAll();
        $courses = $courseRepository->findAll();

        return $this->render('home/index.html.twig', [
            'themes' => $themes,
            'courses' => $courses,
        ]);
    }
}
