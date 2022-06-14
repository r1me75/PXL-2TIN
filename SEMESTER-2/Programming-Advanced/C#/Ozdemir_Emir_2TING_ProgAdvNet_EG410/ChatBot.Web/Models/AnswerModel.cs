namespace ChatBot.Web.Models
{
    public class AnswerModel
    {
        public AnswerModel(string answer)
        {
            Answer = answer;
        }
        public string Answer { get; }
    }
}