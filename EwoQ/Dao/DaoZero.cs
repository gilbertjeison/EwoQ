using EwoQ.Database;
using EwoQ.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace EwoQ.Dao
{
    public class DaoZero
    {
        private static DaoZero daoInstance = null;

        public static DaoZero DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new DaoZero();
                }

                return daoInstance;
            }
        }

        public async Task<List<ZeroViewModel>> GetZeroQuestions(int tipo_m)
        {
            List<ZeroViewModel> list = new List<ZeroViewModel>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = await context.zero_questions
                        .Where(z=>z.codigo_tipom == tipo_m)
                            .Include(z => z.zero_responses).ToListAsync();

                    var i = query.Count;

                    foreach (var item in query.ToList())
                    {
                        list.Add(new ZeroViewModel()
                        {
                            Id = item.id,
                            IdTipoM = item.codigo_tipom.Value,
                            DescTipoM = item.tipos_data.descripcion,
                            Pregunta = item.pregunta,
                            Responses = await GetZeroResponses(item.id)
                        });
                    }
                }
            }
            catch (Exception e)
            {
                Trace.WriteLine("Excepción al consultar Zero Questions por tipo: " + e.ToString());
            }

            return list;
        }

        public async Task<List<ZeroResponses>> GetZeroResponses(long idPregunta)
        {
            List<ZeroResponses> list = new List<ZeroResponses>();

            try
            {
                using (var context = new EwoQEntities())
                {
                    var query = from q in context.zero_questions
                                join r in context.zero_responses
                                on q.id equals r.codigo_pregunta                                
                                where r.codigo_pregunta == idPregunta
                                select new ZeroResponses()
                                {
                                    Id = r.id,
                                    IdPregunta = r.codigo_pregunta.Value,
                                    Respuesta = r.respuesta,
                                    Puntaje = r.puntaje.Value
                                };

                    list = await query.ToListAsync();                                        
                }
            }
            catch (Exception e)
            {
                Trace.WriteLine("Excepción al consultar zero responses: " + e.ToString());
            }

            return list;
        }

        public async Task<ZeroResponses> GetZeroResponse(long idPregunta, int puntaje)
        {
            ZeroResponses obj = new ZeroResponses();

            try
            {
                using (var context = new EwoQEntities())
                {
                   obj = await (from q in context.zero_questions
                                join r in context.zero_responses
                                on q.id equals r.codigo_pregunta
                                where r.codigo_pregunta == idPregunta
                                && r.puntaje == puntaje
                                select new ZeroResponses()
                                {
                                    Id = r.id,
                                    IdPregunta = r.codigo_pregunta.Value,
                                    Respuesta = r.respuesta,
                                    Puntaje = r.puntaje.Value
                                }).FirstOrDefaultAsync();                   
                }
            }
            catch (Exception e)
            {
                Trace.WriteLine("Excepción al consultar zero response: " + e.ToString());
            }

            return obj;
        }

        public async Task<int> AddZeroEwoAsync(List<zero_ewo> zr)
        {
            int regs = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    context.zero_ewo.AddRange(zr);
                    regs = await context.SaveChangesAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error agregando zero ewo: " + e.ToString());
                regs = -1;
            }

            return regs;
        }
    }
}