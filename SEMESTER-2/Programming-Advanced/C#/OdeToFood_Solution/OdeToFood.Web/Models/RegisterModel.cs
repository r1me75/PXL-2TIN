﻿using System.ComponentModel.DataAnnotations;

namespace OdeToFood.Web.Models
{
    public class RegisterModel
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        [MinLength(6)]
        public string Password { get; set; }
    }
}
