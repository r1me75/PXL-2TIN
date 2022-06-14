using Microsoft.AspNetCore.Identity;
using System;

namespace SecureDemo.Domain
{
    public class User : IdentityUser<int>
    {
        public DateTime DateOfBirth { get; set; }
    }
}
