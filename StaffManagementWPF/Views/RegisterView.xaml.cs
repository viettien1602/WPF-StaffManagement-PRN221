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
using System.Windows.Shapes;

namespace StaffManagementWPF.Views
{
    /// <summary>
    /// Interaction logic for RegisterView.xaml
    /// </summary>
    public partial class RegisterView : Window
    {
        private static readonly IUserRepository userRepository = new UserRepository();
        private readonly IUserService userService = new UserService(userRepository);

        public RegisterView()
        {
            InitializeComponent();
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void btnRegister_Click(object sender, RoutedEventArgs e)
        {
            if (txtFullname.Text == "") txtbError.Text = "Please input fullname";
            else if (txtUsername.Text == "") txtbError.Text = "Please input username";
            else if (txtPassword.Password == "") txtbError.Text = "Please input password";
            else if (txtConfirmPassword.Password == "") txtbError.Text = "Please input confirm password";
            else if (txtPassword.Password != txtConfirmPassword.Password)
                txtbError.Text = "Confirm password not match";
            else
            {
                var user = userService.GetUsers()
                    .Where(u => u.Username == txtUsername.Text).FirstOrDefault();
                if (user != null) txtbError.Text = "Username has already been used";
                else
                {
                    string role = "STA";
                    User newUser = new User
                    {
                        Username = txtUsername.Text,
                        Password = txtPassword.Password,
                        Fullname = txtFullname.Text,
                        RoleId = role
                    };
                    userService.Create(newUser);
                    txtbError.Text = "";
                    MessageBox.Show("Create Staff account successfully");
                    btnLogin_Click(sender, e);

                }
            }
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            var loginView = new LoginView();
            this.Close();
            loginView.Show();
        }
    }
}
