using FontAwesome.Sharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace StaffManagementWPF.ViewModels
{
    public class StaffMainViewModel : ViewModelBase
    {
        private ViewModelBase _currentChildView;
        private string _caption;
        private IconChar _icon;



        public ViewModelBase CurrentChildView
        {
            get => _currentChildView;
            set
            {
                _currentChildView = value;
                OnPropertyChanged(nameof(CurrentChildView));
            }
        }
        public string Caption
        {
            get => _caption;
            set
            {
                _caption = value;
                OnPropertyChanged(nameof(Caption));
            }
        }
        public IconChar Icon
        {
            get => _icon;
            set
            {
                _icon = value;
                OnPropertyChanged(nameof(Icon));
            }
        }

        //Commands
        public ICommand ShowHomeViewCommand { get; }
        public ICommand ShowPersonalInfoViewCommand { get; }


        public StaffMainViewModel()
        {
            //Initialize commands
            ShowHomeViewCommand = new ViewModelCommand(ExecuteShowHomeViewCommand);
            ShowPersonalInfoViewCommand = new ViewModelCommand(ExecuteShowPersonalInfoViewCommand);

            //Default view
            ExecuteShowHomeViewCommand(null);
        }


        private void ExecuteShowHomeViewCommand(object obj)
        {
            CurrentChildView = new HomeViewModel();
            Caption = "Dashboard";
            Icon = IconChar.Home;
        }

        private void ExecuteShowPersonalInfoViewCommand(object obj)
        {
            CurrentChildView = new PersonalInfoViewModel();
            Caption = "Personal Info";
            Icon = IconChar.UserGear;
        }
    }
}
