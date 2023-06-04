using BusinessLayer.Service;
using DataLayer.Models;
using DataLayer.Repositoy;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace StaffManagementWPF.Views
{
    /// <summary>
    /// Interaction logic for StaffView.xaml
    /// </summary>
    public partial class StaffView : UserControl
    {
        private static readonly IUserRepository userRepository = new UserRepository();
        private readonly IUserService userService = new UserService(userRepository);
        private ObservableCollection<Staff> staffs = new ObservableCollection<Staff>();
        public StaffView()
        {
            InitializeComponent();
            assignDataGridView();
            
        }

        private void assignDataGridView()
        {
            staffs.Clear();
            userService.GetUsers().ForEach(u =>
            {
                staffs.Add(new Staff
                {
                    UserId = u.UserId,
                    Username = u.Username,
                    Fullname = u.Fullname,
                    Email = u.Email,
                    Phone = u.Phone,
                    Address = u.Address
                });
            });
            dgStaffs.ItemsSource = staffs;
        }

        private void btnGridDelete_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult decision = MessageBox.Show("Do you want to delete this staff");
            if (decision.Equals(MessageBoxResult.OK)) 
            {
                var selectedStaff = (Staff)dgStaffs.SelectedItem;
                var selectedUser = userService.GetUsers().FirstOrDefault(u => u.UserId == selectedStaff.UserId);
                if (selectedUser.RoleId == "ADMIN")
                    MessageBox.Show("Can not delete Admin");
                else
                {
                    if (selectedUser != null) userService.Delete(selectedUser);
                    staffs.Remove(selectedStaff);
                    dgStaffs.ItemsSource = staffs;
                }
            }
                
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            staffs.Clear();
            userService.GetUsers().ForEach(u =>
            {
                if (u.Fullname.ToLower().Contains(txtSearch.Text.Trim().ToLower()))
                    staffs.Add(new Staff
                    {
                        UserId = u.UserId,
                        Username = u.Username,
                        Fullname = u.Fullname,
                        Email = u.Email,
                        Phone = u.Phone,
                        Address = u.Address
                    });
            });
            dgStaffs.ItemsSource = staffs;

        }
    }

    public class Staff
    {
        public int UserId { get; set; }
        public string Username { get; set; } = null!;
        public string Fullname { get; set; } = null!;
        public string? Email { get; set; }
        public string? Phone { get; set; }
        public string? Address { get; set; }
    }
}
