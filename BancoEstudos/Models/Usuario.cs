using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

#nullable disable

namespace BancoEstudos.Models
{
    [Table("Usuarios")]
    public partial class Usuario
    {
        [Key]
        public int ClientNum { get; set; }
        public string Email { get; set; }
        public DateTime CreateDate { get; set; }
        public string Nome { get; set; }
        public string Sobrenome { get; set; }
        public string Cpf { get; set; }
    }
}
