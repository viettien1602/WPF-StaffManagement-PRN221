using DataLayer.Models;
using DataLayer.Repositoy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Service
{
    public class UserService : IUserService
    {
        private IUserRepository userRepository;

        public UserService(IUserRepository userRepository)
        {
            this.userRepository = userRepository;
        }

        public void Create(User user) => userRepository.Create(user);

        public bool Delete(User user) => userRepository.Delete(user);

        public List<User> GetUsers() => userRepository.GetUsers();

        public void Update(User user) => userRepository.Update(user);
    }
}
