using Microsoft.AspNetCore.Identity;

namespace SecureDemo.Domain
{
    public class Role : IdentityRole<int>
    {
        public static class Constants
        {
            public const string Lector = "Lector";
            public const string Student = "Student";
        }
    }
}
