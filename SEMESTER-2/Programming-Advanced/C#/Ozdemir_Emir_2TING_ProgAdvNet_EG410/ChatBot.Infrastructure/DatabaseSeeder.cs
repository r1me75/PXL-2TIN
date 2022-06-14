using System.Threading.Tasks;
using ChatBot.Domain;
using Microsoft.AspNetCore.Identity;

namespace ChatBot.Infrastructure
{
    internal class DatabaseSeeder
    {
        private readonly UserManager<User> _userManager;

        public DatabaseSeeder(UserManager<User> userManager)
        {
            _userManager = userManager;
        }

        public async Task Seed()
        {
            string dummyEmail = "dummy@pxl.be";
            string dummyPassword = "Dummy123!";

            User dummyUser = await _userManager.FindByEmailAsync(dummyEmail);
            if (dummyUser == null)
            {
                dummyUser = new User
                {
                    UserName = dummyEmail,
                    Email = dummyEmail
                };

                await _userManager.CreateAsync(dummyUser, dummyPassword);
            }
        }
    }
}