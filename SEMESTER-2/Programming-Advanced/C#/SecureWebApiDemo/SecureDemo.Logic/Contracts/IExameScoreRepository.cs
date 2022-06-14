using SecureDemo.Domain;
using System.Collections.Generic;

namespace SecureDemo.Logic.Contracts
{
    public interface IExamScoreRepository
    {
        void AddScoreForUser(string course, double score, int userId);
        IList<ExamScore> GetAllScores();
        double GetAverageScore();
    }
}
