using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using SecureDemo.Domain;

namespace SecureDemo.Infrastructure
{
    internal class DemoContext : IdentityDbContext<User, Role, int>
    {
        public DbSet<ExamScore> ExamScores { get; set; }

        public DemoContext(DbContextOptions options) : base(options) { }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            builder.Entity<ExamScore>().Property(es => es.Course).IsRequired();
            base.OnModelCreating(builder);
        }
    }
}

