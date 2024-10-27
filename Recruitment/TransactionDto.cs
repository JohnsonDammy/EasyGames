using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Recruitment
{
    public class TransactionDto
    {
        public int TransactionID { get; set; }
        public DateTime TransactionDate { get; set; }
        public string TransactionType { get; set; }
        public decimal Amount { get; set; }
        public string Comment { get; set; }
    }
}