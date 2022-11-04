namespace PlatillosApi.Models
using System.ComponentModel.DataAnnotation;

{
    public class Platillos
    
    {
        [key]
        public int Id { get; set}
        public string Name {get; set}
        public string UrlImage {get; set}
        public double precio {get; set}
    }

}