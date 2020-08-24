<?php

namespace App\Entity;

use Symfony\Component\Validator\Constraints as Assert;

class Contact
{
    /**
     * @var string|null
     * @Assert\NotBlank
     * @Assert\Length(min=2,max=100)
     */
    private $firstname;

    /**
     * @var string|null
     * @Assert\NotBlank
     * @Assert\Length(min=2,max=100)
     */
    private $lastname;

    /**
     * @var string|null
     * @Assert\NotBlank
     * @Assert\Regex(
     *  pattern="/[0-9]{10}/"
     * )
     */
    private $phone;

    /**
     * @var string|null
     * @Assert\NotBlank
     * @Assert\Email()
     */
    private $email;

    /**
     * @var string|null
     * @Assert\NotBlank
     * @Assert\Length(min=10)
     */
    private $message;

    /**
     * @var Property|null
     */
    private $property;

    /**
     * @return string|null
     */
    public function getFirstName(): ?string
    {
        return $this->firstname;
    }

    /**
     * @param string|null $firstname  
     * 
     * @return self
     */
    public function setFirstName($firstname): self
    {
        $this->firstname = $firstname;

        return $this;
    }

    /**
     * @return string|null
     */
    public function getLastName(): ?string
    {
        return $this->lastname;
    }

    /**
     * @param  string|null $lastname  
     * 
     * @return self
     */
    public function setLastName($lastname): self
    {
        $this->lastname = $lastname;

        return $this;
    }

    /**
     * @return string|null
     */
    public function getPhone(): ?string
    {
        return $this->phone;
    }

    /**
     * @param string|null $phone pattern="/[0-9]{10}/"
     * 
     * @return self
     */
    public function setPhone($phone): self
    {
        $this->phone = $phone;

        return $this;
    }

    /**
     * @return string|null
     */
    public function getEmail(): ?string
    {
        return $this->email;
    }

    /**
     * @param string|null $email 
     *  
     * @return self
     */
    public function setEmail($email): self
    {
        $this->email = $email;

        return $this;
    }

    /**
     * @return string|null
     */
    public function getMessage(): ?string
    {
        return $this->message;
    }

    /**
     * @param string|null $message  
     * 
     * @return self
     */
    public function setMessage($message): self
    {
        $this->message = $message;

        return $this;
    }

    /**
     * @return Property|null
     */
    public function getProperty(): ?Property
    {
        return $this->property;
    }

    /**
     * @param Property|null $property  
     * 
     * @return self
     */
    public function setProperty($property): self
    {
        $this->property = $property;

        return $this;
    }
}
