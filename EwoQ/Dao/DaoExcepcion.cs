using EwoQ.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EwoQ.Dao
{
    public class DaoExcepcion
    {
        private static DaoExcepcion daoInstance = null;

        public static DaoExcepcion DaoInstance
        {
            get
            {
                if (daoInstance == null)
                {
                    daoInstance = new DaoExcepcion();
                }

                return daoInstance;
            }
        }


        public async System.Threading.Tasks.Task<int> AddExceptionAsync(excepciones ex)
        {
            int regs = 0;

            using (var context = new EwoQEntities())
            {
                context.excepciones.Add(ex);
                regs = await context.SaveChangesAsync();
            }

            //ENVIAR CORREO ELECTRONICO A DESARROLLADOR DEL SISTEMA
            //await Utils.SomeHelpers.SendGridAsync(4, "gilbertjeison@gmail.com", ex.descripcion);

            return regs;
        }

    }
}