using BusinessLayer.Service;
using DataLayer.Models;
using DataLayer.Repositoy;
using System;
using System.Collections.Generic;
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
    /// Interaction logic for PersonalInfoView.xaml
    /// </summary>
    public partial class PersonalInfoView : UserControl
    {
        private User currentUser;
        private static readonly IUserRepository userRepository = new UserRepository();
        private readonly IUserService userService = new UserService(userRepository);
        public PersonalInfoView()
        {
            InitializeComponent();
            Loaded += YourUserControl_Loaded;
            
        }

        private void YourUserControl_Loaded(object sender, RoutedEventArgs e)
        {
            AdminMainView adminMainView = Window.GetWindow(this) as AdminMainView;
            StaffMainView staffMainView = Window.GetWindow(this) as StaffMainView;
            if (adminMainView != null)
            {
                currentUser = adminMainView.CurrentUser;
            }
            else if (staffMainView != null)
            {
                currentUser = staffMainView.CurrentUser;
            }

            txtFullname.Text = currentUser.Fullname;
            txtEmail.Text = currentUser.Email;
            txtPhone.Text = currentUser.Phone;
            txtAddress.Text = currentUser.Address;
        }

        private void btnUpdateInfo_Click(object sender, RoutedEventArgs e)
        {
            if (CheckInfoInput())
            {
                currentUser.Fullname = txtFullname.Text;
                currentUser.Email = txtEmail.Text;
                currentUser.Phone = txtPhone.Text;
                currentUser.Address = txtAddress.Text;
                userService.Update(currentUser);
                txtbInfoError.Text = "Update casual info successfully";
                txtbInfoError.Foreground = Brushes.Green;
            }
            
        }

        private bool CheckInfoInput()
        {
            if (txtFullname.Text == "")
            {
                txtbInfoError.Text = "Please input fullname";
                return false;
            }
            if (txtEmail.Text == "")
            {
                txtbInfoError.Text = "Please input email";
                return false;
            }
            if (txtPhone.Text == "")
            {
                txtbInfoError.Text = "Please input phone";
                return false;
            }
            if (txtAddress.Text == "")
            {
                txtbInfoError.Text = "Please input address";
                return false;
            }
            return true;

        }

        private void btnUpdatePassword_Click(object sender, RoutedEventArgs e)
        {
            if (CheckPasswordInput())
            {
                currentUser.Password = txtNewPassword.Password;
                userService.Update(currentUser);
                txtbPasswordError.Text = "Update password successfully";
                txtbPasswordError.Foreground = Brushes.Green;
            }
        }

        private bool CheckPasswordInput()
        {
            if (txtOldPassword.Password == "")
            {
                txtbPasswordError.Text = "Please input old password";
                return false;
            }
            if (txtNewPassword.Password == "")
            {
                txtbPasswordError.Text = "Please input new password";
                return false;
            }
            if (txtConfirmNewPassword.Password == "")
            {
                txtbPasswordError.Text = "Please input confirm new password";
                return false;
            }
            if (txtOldPassword.Password != currentUser.Password)
            {
                txtbPasswordError.Text = "Old password is incorrect";
                return false;
            }
            if (txtNewPassword.Password != txtConfirmNewPassword.Password)
            {
                txtbPasswordError.Text = "Confirm new password not match";
                return false;
            }
            return true;
        }
    }
}
