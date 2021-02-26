using AutoMapper;
using BancoEstudos.Data;
using BancoEstudos.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BancoEstudos.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BancoController : ControllerBase
    {

        private readonly UsuariosContext _context;
        private readonly CreditosContasContext _context2;
        private readonly IMapper _mapper;


        public BancoController(UsuariosContext context, CreditosContasContext context2, IMapper mapper)
        {
            _context2 = context2;
            _context = context;
            _mapper = mapper;
        }


        // GET: Clientes
        [HttpGet("Clientes")]
        public ActionResult<IEnumerable<Usuario>> GetUsuarios()
        {
            var Usuarios = _context.Usuarios.ToList();

            return Usuarios;
        }


        [HttpGet("Clientes/{clinum}/")]
        public ActionResult<Usuario> GetClientByNum(int clinum)
        {

            var Usuario = _context.Usuarios.Where(a => a.ClientNum == clinum).FirstOrDefault();

            if (Usuario == null)
            {
                return NotFound();
            }

            return Usuario;

        }


        // GET: Clientes
        [HttpGet("Creditos")]
        public ActionResult<IEnumerable<CreditosConta>> GetCreditos()
        {
            var CreditosUsers = _context2.CreditosContas.ToList();

            return CreditosUsers;
        }



        [HttpGet("Creditos/{clinum}/")]
        public ActionResult<CreditosConta> GetCreditosByNum(int clinum)
        {

            var CreditosUsers = _context2.CreditosContas.Where(a => a.ClientNum == clinum).FirstOrDefault();

            if (CreditosUsers == null)
            {
                return NotFound();
            }

            return CreditosUsers;

        }



        // GET: Clientes
        [HttpGet("ClientesECreditos")]
        public ActionResult<IEnumerable<Usuario>> GetUsuariosCreditos()
        {
            var Usuarios = _context.Usuarios.ToList();
            var CreditosUsers = _context2.CreditosContas.ToList();


            return Usuarios;
           
        }



        [HttpGet("ClientesECreditos/{clinum}/")]
        public ActionResult<CreditosConta> GetClientesECreditosByNum(int clinum)
        {
            var Usuario = _context.Usuarios.Where(a => a.ClientNum == clinum).FirstOrDefault();
            var CreditosUsers = _context2.CreditosContas.Where(a => a.ClientNum == clinum).FirstOrDefault();

            if (CreditosUsers == null)
            {
                return NotFound();
            }

            return CreditosUsers;

        }



    }
}
