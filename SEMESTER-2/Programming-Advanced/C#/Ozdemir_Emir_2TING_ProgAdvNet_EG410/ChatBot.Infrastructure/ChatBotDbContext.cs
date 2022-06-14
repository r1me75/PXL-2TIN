using ChatBot.Domain;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;

namespace ChatBot.Infrastructure
{
    internal class ChatBotDbContext : IdentityDbContext<User, Role, Guid>
    {
        public DbSet<Feedback> Feedbacks { get; set; }

        public ChatBotDbContext(DbContextOptions options) : base(options)
        {

        }
    }
}
