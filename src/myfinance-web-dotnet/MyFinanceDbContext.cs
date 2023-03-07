using Microsoft.EntityFrameworkCore;
using myfinance_web_dotnet.Domain.Entities;

namespace myfinance_web_dotnet
{
    public class MyFinanceDbContext : DbContext
    {
        public DbSet<PlanoConta> PlanoConta { get; set; }
        public DbSet<Transacao> Transacao { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var connectionString = @"Server=.\SQLEXPRESS;Database=myfinance;Trusted_Connection=True; TrustServerCertificate=True";
            optionsBuilder.UseSqlServer(connectionString);
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

        }
    }

}