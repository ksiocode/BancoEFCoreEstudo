using System;
using BancoEstudos.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace BancoEstudos.Data
{
    public partial class CreditosContasContext : DbContext
    {
        public CreditosContasContext()
        {
        }

        public CreditosContasContext(DbContextOptions<CreditosContasContext> options)
            : base(options)
        {
        }

        public virtual DbSet<CreditosConta> CreditosContas { get; set; }

  

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "Latin1_General_CI_AS");

            modelBuilder.Entity<CreditosConta>(entity =>
            {
                entity.HasKey(e => e.ClientNum);

                entity.Property(e => e.ClientNum).ValueGeneratedNever();

                entity.Property(e => e.ContaTipo)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.UpdateDate).HasColumnType("datetime");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
