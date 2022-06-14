using System;
using System.ComponentModel.DataAnnotations;

namespace SecureDemo.Api.Models
{
    public class RegisterModel
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        [MinLength(6)]
        public string Password { get; set; }

        public DateTime DateOfBirth { get; set; }
    }
}
