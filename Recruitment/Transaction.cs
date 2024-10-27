using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Recruitment
{
    public class Transaction
    {
        public int TransactionID { get; set; }          // Corresponds to t.ID AS TransactionID
        public DateTime TransactionDate { get; set; }   // Corresponds to t.TransactionDate
        public string TransactionType { get; set; }     // Corresponds to tt.TypeName AS TransactionType
        public decimal Amount { get; set; }             // Corresponds to t.Amount
        public string Comment { get; set; }              // Corresponds to t.Comment
    }
}