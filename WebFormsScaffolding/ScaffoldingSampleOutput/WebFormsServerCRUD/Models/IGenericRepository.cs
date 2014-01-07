﻿using System;
namespace WebFormsServerCRUD.Models
{
    public interface IGenericRepository
    {
        void Add<T>(T entityToCreate) where T : class;
        void Dispose();
        T Find<T>(params object[] keyValues) where T : class;
        System.Linq.IQueryable<T> Query<T>(params System.Linq.Expressions.Expression<Func<T, object>>[] includeProperties) where T : class;
        void Remove<T>(params object[] keyValues) where T : class;
        void SaveChanges();
        System.Collections.Generic.IEnumerable<T> SqlQuery<T>(string sql, params object[] parameters);
    }
}
