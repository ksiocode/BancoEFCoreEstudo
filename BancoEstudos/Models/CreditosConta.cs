using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

#nullable disable

namespace BancoEstudos.Models
{
    [Table("CreditosContas")]
    public partial class CreditosConta
    {
        [Key]
        public int ClientNum { get; set; }
        public double Saldo { get; set; }
        public DateTime? UpdateDate { get; set; }
        public string ContaTipo { get; set; }
        public int GerenteId { get; set; }
    }
}
