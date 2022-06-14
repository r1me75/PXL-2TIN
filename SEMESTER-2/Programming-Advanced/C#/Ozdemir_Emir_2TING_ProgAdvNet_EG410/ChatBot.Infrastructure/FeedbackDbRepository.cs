using ChatBot.AppLogic;
using ChatBot.Domain;
using System.Threading.Tasks;

namespace ChatBot.Infrastructure
{
    internal class FeedbackDbRepository : IFeedbackRepository
    {
        private ChatBotDbContext _context;
        public FeedbackDbRepository(ChatBotDbContext context)
        {
            _context = context;
        }
        public async Task AddAsync(Feedback newFeedback)
        {
            _context.Feedbacks.Add(newFeedback);
            await _context.SaveChangesAsync();
        }
    }
}