<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Twig\Environment;

/**
 * HomeController class
 */
class HomeController
{
    /**
     * @var Environment
     */
    private $twig;

    /**
     * Construct function
     *
     * @param [type] $twig
     */
    public function __construct(Environment $twig)
    {
        $this->twig = $twig;
    }

    /**
     * Index function
     *
     * @return Response
     */
    public function index(): Response
    {
        return new Response($this->twig->render('pages/home.html.twig'));
    }
}
