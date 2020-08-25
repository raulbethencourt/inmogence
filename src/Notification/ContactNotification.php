<?php

namespace App\Notification;

use App\Entity\Contact;
use Symfony\Component\Mime\Address;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ContactNotification extends AbstractController
{
    private $mailer;

    public function __construct(MailerInterface $mailer)
    {
        $this->mailer = $mailer;
    }

    public function notify(Contact $contact)
    {
        $email = (new TemplatedEmail())
            ->from(Address::fromString('Inmogence <inmogence@example.com>'))
            ->to(Address::fromString('Raul bethencourt <raul@example.com>'))
            ->replyTo($contact->getEmail())
            ->subject('Bien: ' . $contact->getProperty()->getTitle())
            ->htmlTemplate('emails/contact.html.twig')
            ->context([
                'contact' => $contact
            ]);

        $this->mailer->send($email);
    }
}
