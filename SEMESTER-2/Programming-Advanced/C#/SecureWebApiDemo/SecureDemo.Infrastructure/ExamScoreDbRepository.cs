using System.Collections.Generic;
using System.Linq;
using SecureDemo.Domain;
using SecureDemo.Logic.Contracts;

namespace SecureDemo.Infrastructure
{
    internal class ExamScoreDbRepository : IExamScoreRepository
    {
        private readonly DemoContext _context;

        public ExamScoreDbRepository(DemoContext context)
        {
            _context = context;
        }

        public void AddScoreForUser(string course, double score, int userId)
        {
            var examScore = new ExamScore {Course = course, Score = score, UserId = userId};
            _context.ExamScores.Add(examScore);
            _context.SaveChanges();
        }

        public IList<ExamScore> GetAllScores()
        {
            return _context.ExamScores.ToList();
        }

        public double GetAverageScore()
        {
            return _context.ExamScores.Average(es => es.Score);
        }
    }
}

