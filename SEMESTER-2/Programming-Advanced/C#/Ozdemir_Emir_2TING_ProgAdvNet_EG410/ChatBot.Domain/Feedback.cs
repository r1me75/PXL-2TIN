using System.ComponentModel.DataAnnotations;

namespace ChatBot.Domain
{
    public class Feedback
    {
        public int Id { get; set; }

        [Range(0, 10)]
        public int Score { get; set; }

        [Required]
        public string Message { get; set; }
    }
}
