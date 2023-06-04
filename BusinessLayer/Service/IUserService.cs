using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Service
{
    public interface IUserService
    {
        public List<User> GetUsers();
        public void Create(User user);
        public void Update(User user);
        public bool Delete(User user);
    }
}
