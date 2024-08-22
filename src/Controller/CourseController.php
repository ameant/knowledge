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
        // Fetch the course from the database using its ID.
        $course = $this->getDoctrine()->getRepository(Course::class)->find($id);

        // If the course does not exist, throw a 404 error.
        if (!$course) {
            throw $this->createNotFoundException('Le cursus n\'existe pas');
        }

        // Retrieve the lessons associated with the course.
        $lessons = $course->getLessons();

        if ($request->isMethod('POST')) {
            $itemType = $request->request->get('item_type');
            $itemId = $request->request->get('item_id');
            $session = $request->getSession();
            $cart = $session->get('cart', []);

            // If the item type is 'course', add the course to the cart
            if ($itemType === 'course') {
                $cart[$course->getId()] = [
                    'id' => $course->getId(),
                    'name' => $course->getName(),
                    'price' => $course->getPrice()
                ];
            // If the item type is 'lesson', add the lesson to the cart
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

        // Render the course page with the course and its lessons
        return $this->render('course/index.html.twig', [
            'course' => $course,
            'lessons' => $lessons,
        ]);
    }
}
