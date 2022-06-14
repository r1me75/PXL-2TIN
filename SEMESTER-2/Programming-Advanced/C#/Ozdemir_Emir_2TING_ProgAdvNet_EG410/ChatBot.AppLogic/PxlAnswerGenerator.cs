using System;

namespace ChatBot.AppLogic
{
    public class PxlAnswerGenerator : IAnswerGenerator
    {
        public const string ReferToPxlAnswer = "If you are interested in PXL, I recommend to visit www.pxl.be";
        public const string DontKnowAnswer = "I don't know that. Do you have a school related question?";

        public string Answer(string question)
        {

            if (! question.ToLower().Contains("pxl"))
            {
                return DontKnowAnswer;
            }

            return ReferToPxlAnswer;
        }
    }
}