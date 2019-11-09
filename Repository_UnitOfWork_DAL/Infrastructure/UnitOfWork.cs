using Repository_UnitOfWork_DAL.EF_Data_Model;
using Repository_UnitOfWork_DAL.Contract;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository_UnitOfWork_DAL.Infrastructure
{
    public class UnitOfWork : IDisposable 
    {
        private CMSDatabaseEntities entities = null;

        public UnitOfWork()
        {
            entities = new CMSDatabaseEntities();
        }

        public Dictionary<Type, object> repositories = new Dictionary<Type, object>();

        public IRepository<T> Repository<T>() where T : class
        {
            if (repositories.Keys.Contains(typeof(T)) == true)
            {
                return repositories[typeof(T)] as IRepository<T>;
            }
            IRepository<T> repo = new Repository<T>(entities);
            repositories.Add(typeof(T), repo);
            return repo;
        }

        public void SaveChanges()
        {
            entities.SaveChanges();
        }

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    entities.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
