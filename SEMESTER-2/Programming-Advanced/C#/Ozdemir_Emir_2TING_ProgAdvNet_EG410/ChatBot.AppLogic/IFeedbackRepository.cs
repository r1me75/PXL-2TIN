using System;
using System.Threading.Tasks;
using ChatBot.Domain;

namespace ChatBot.AppLogic
{
    public interface IFeedbackRepository
    {
        Task AddAsync(Feedback newFeedback);
    }
}
