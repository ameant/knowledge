<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class BoughtController extends AbstractController
{
    /**
     * @Route("/bought", name="app_bought")
     */
    public function index(): Response
    {
        return $this->render('bought/index.html.twig', [
            'controller_name' => 'BoughtController',
        ]);
    }
}
