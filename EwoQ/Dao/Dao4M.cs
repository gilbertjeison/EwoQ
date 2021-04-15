using EwoQ.Database;
using EwoQ.Models;
using EwoQ.Utils;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace EwoQ.Dao
{
    public class Dao4M
    {
        private static Dao4M daoInstance = null;

        public static Dao4M DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new Dao4M();
                }

                return daoInstance;
            }
        }
        public async Task<List<preguntas_4m>> Get4mQuestionsByType(long id)
        {
            List<preguntas_4m> p4m = new List<preguntas_4m>();

                using (var context = new EwoQEntities())
                {
                    var query = from p in context.preguntas_4m                                
                                where p.codigo_tipo4m == id
                                select p;

                    var p4 = await query.ToListAsync();

                    foreach (var item in p4)
                    {
                        p4m.Add(new preguntas_4m()
                        {
                            id = item.id,
                            codigo_tipo4m = item.codigo_tipo4m,
                            descripcion = item.descripcion
                        });
                    }
                    
                }         

            return p4m;
        }

        public async Task<int> AddRespuestasAsync(List<respuestas4m> r4)
        {
            int regs = 0;

            try
            {
                using (var context = new EwoQEntities())
                {
                    context.respuestas4m.AddRange(r4);
                    regs = await context.SaveChangesAsync();
                }
            }
            catch (Exception e)
            {
                Debug.WriteLine("Error agregando respuestas 4M: " + e.ToString());
                regs = -1;
            }

            return regs;
        }

        public async Task<List<Respuestas4MModel>> Get4MResponses(long id_ewo)
        {
            List<Respuestas4MModel> list = null;

            using (var context = new EwoQEntities())
            {
                var query = (from r in context.respuestas4m
                            join p in context.preguntas_4m
                            on r.codigo_pregunta equals p.id
                            where r.codigo_ewo == id_ewo
                            select new Respuestas4MModel
                            {
                                idTipoM = p.codigo_tipo4m ?? 0,
                                Pregunta = p.descripcion,
                                Respuesta = r.verificado
                            }).Distinct();                               

                list = await query.ToListAsync();
            }

            return list;
        }


        public async Task<List<Respuestas4MModel>> Complete4MResponses(long id_ewo)
        {
            List<Respuestas4MModel> list = await Get4MResponses(id_ewo);

            //Revisar que preguntas faltan en la lista y completarlas con respuesta en NO
            var arrTipos = list.Select(x => x.idTipoM).Distinct().ToArray();

            if (!arrTipos.Contains(Constantes.MAQUINA))
            {
                //Agregar preguntas de máquinas
                list = await AgregarPreguntas(Constantes.MAQUINA, list);                
            }

            if (!arrTipos.Contains(Constantes.METODO))
            {
                //Agregar preguntas de métodos
                list = await AgregarPreguntas(Constantes.METODO, list);
            }

            if (!arrTipos.Contains(Constantes.MATERIALES))
            {
                //Agregar preguntas de materiales
                list = await AgregarPreguntas(Constantes.MATERIALES, list);
            }

            if (!arrTipos.Contains(Constantes.MAN))
            {
                //Agregar preguntas de man
                list = await AgregarPreguntas(Constantes.MAN, list);
            }        

            return list;
        }

        private async Task<List<Respuestas4MModel>> AgregarPreguntas(long tipo, List<Respuestas4MModel> lista) 
        {
            var preguntas = await Get4mQuestionsByType(tipo);

            preguntas.ForEach((a) =>
            {
                lista.Add(new Respuestas4MModel
                {
                    idTipoM = a.codigo_tipo4m ?? 0,
                    Pregunta = a.descripcion,
                    Respuesta = "No"
                });
            });

            return lista;
        }
    }
}