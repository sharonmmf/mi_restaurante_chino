namespace PlatilloApi.Models

{
    public class PlatilloContext : Dbcontext
    {
        public PlatilloContext(DbContextOptions<UsuarioContext> options): base(options){}

        public DbSet<Platillo> Platillos {get; set}
    }
}