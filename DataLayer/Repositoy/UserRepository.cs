using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer.Repositoy
{
    public class UserRepository : IUserRepository
    {
        private readonly StaffManagementContext staffManagementDbContext;

        public UserRepository()
        {
            staffManagementDbContext = new StaffManagementContext();
        }
        public void Create(User user)
        {
            if (user is not null)
            {
                staffManagementDbContext.Add(user);
                staffManagementDbContext.SaveChanges();
            }
        }

        public bool Delete(User user)
        {
            bool result = false;
            try
            {
                staffManagementDbContext.Users.Remove(user);
                staffManagementDbContext.SaveChanges();
                result = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return result;

        }

        public List<User> GetUsers() => staffManagementDbContext.Users.ToList();

        public void Update(User user)
        {
            if (user is not null)
            {
                staffManagementDbContext.Update(user);
                staffManagementDbContext.SaveChanges();
            }
        }
    }
}
