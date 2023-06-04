using BusinessLayer.Service;
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
    /// Interaction logic for LoginView.xaml
    /// </summary>
    public partial class LoginView : Window
    {
        private static readonly IUserRepository userRepository = new UserRepository();
        private readonly IUserService userService = new UserService(userRepository);

        public LoginView()
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

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            if (txtUsername.Text == "") txtbError.Text = "Please input username";
            else if (txtPassword.Password == "") txtbError.Text = "Please input password";
            else
            {
                var user = userService.GetUsers()
                    .Where(u => u.Username == txtUsername.Text && u.Password == txtPassword.Password)
                    .FirstOrDefault();
                if (user == null)
                {
                    txtbError.Text = "Invalid username or password!";
                }
                else
                {
                    if (user.RoleId == "ADMIN")
                    {
                        MessageBox.Show("You have logged in with Admin role");
                        var adminMainView = new AdminMainView(user);
                        this.Close();
                        adminMainView.Show();
                    }
                    else if (user.RoleId == "STA")
                    {
                        MessageBox.Show("You have logged in with Staff role");
                        var staffMainView = new StaffMainView(user);
                        this.Close();
                        staffMainView.Show();
                    }
                    else
                    {
                        txtbError.Text = "Your site is not supported yet";
                    }
                }
            }
        }

        private void btnRegister_Click(object sender, RoutedEventArgs e)
        {
            var registerView = new RegisterView();
            this.Close();
            registerView.Show();
        }
    }
}
