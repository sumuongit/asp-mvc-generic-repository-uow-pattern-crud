using Repository_UnitOfWork_DAL.EF_Data_Model;
using Repository_UnitOfWork_DAL.Contract;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Repository_UnitOfWork_DAL.Infrastructure
{
    public class Repository<T> : IRepository<T> where T : class
    {
        private CMSDatabaseEntities _entities = null;
        private DbSet<T> _objectSet = null;

        public Repository(CMSDatabaseEntities entities)
        {
            _entities = entities;
            _objectSet = entities.Set<T>();
        }

        public IEnumerable<T> GetAll(Func<T, bool> predicate = null)
        {
            if (predicate != null)
            {
                return _objectSet.Where(predicate);
            }

            return _objectSet.AsEnumerable();
        }

        public T Get(Func<T, bool> predicate)
        {
            return _objectSet.First(predicate);
        }

        public void Add(T entity)
        {
            _objectSet.Add(entity);
        }

        public void Attach(T entity)
        {
            //_objectSet.Attach(entity);           
            _entities.Entry(entity).State = EntityState.Modified;
        }

        public void Delete(T entity)
        {
            _objectSet.Remove(entity);
        }
    }
}
