<?php

namespace App\Controller;

use App\Entity\Course;
use App\Entity\Lesson;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

class CourseController extends AbstractController
{
    /**
     * @Route("/course/{id}", name="app_course")
     */
    public function show(int $id, Request $request): Response
    {
        $course = $this->getDoctrine()->getRepository(Course::class)->find($id);

        if (!$course) {
            throw $this->createNotFoundException('Le cursus n\'existe pas');
        }

        $lessons = $course->getLessons(); // Assuming you have a getLessons() method in Course entity

        if ($request->isMethod('POST')) {
            $itemType = $request->request->get('item_type');
            $itemId = $request->request->get('item_id');
            $session = $request->getSession();
            $cart = $session->get('cart', []);

            if ($itemType === 'course') {
                $cart[$course->getId()] = [
                    'id' => $course->getId(),
                    'name' => $course->getName(),
                    'price' => $course->getPrice()
                ];
            } elseif ($itemType === 'lesson') {
                $lesson = $this->getDoctrine()->getRepository(Lesson::class)->find($itemId);
                if ($lesson) {
                    $cart[$lesson->getId()] = [
                        'id' => $lesson->getId(),
                        'name' => $lesson->getName(),
                        'price' => $lesson->getPrice()
                    ];
                }
            }

            $session->set('cart', $cart);
            return $this->redirectToRoute('app_cart');
        }

        return $this->render('course/index.html.twig', [
            'course' => $course,
            'lessons' => $lessons,
        ]);
    }
}
