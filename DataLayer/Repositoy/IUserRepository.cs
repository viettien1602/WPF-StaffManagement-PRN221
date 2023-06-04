using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer.Repositoy
{
    public interface IUserRepository
    {
        List<User> GetUsers();
        void Create(User user);
        void Update(User user);
        bool Delete(User user);
    }
}
