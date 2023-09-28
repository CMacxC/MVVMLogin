using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using LoginForm.Model;
using LoginForm.Repositories;

namespace LoginForm.ViewModel
{
    public class MainViewModel : ViewModelBase
    {
        //Fields
        private UserAccountModel _currentUserAccount;
        private IUserRepository userRepository;

        public UserAccountModel CurrentUserAccount
        {
            get
            {
                return _currentUserAccount;
            }

            set
            {
                _currentUserAccount = value;
                OnPropertyChanged(nameof(CurrentUserAccount));
            }
        }

        public MainViewModel()
        {
            userRepository = new UserRepository();
            CurrentUserAccount = new UserAccountModel();
            LoadCurrentUserData();
        }

        private void LoadCurrentUserData()
        {
            var user = userRepository.GetbyUsername(Thread.CurrentPrincipal.Identity.Name);

            if(user != null)
            {
                CurrentUserAccount.UserName = user.UserName;
                CurrentUserAccount.DisplayName = $"Welcome {user.Name} {user.LastName} ;)";
                CurrentUserAccount.ProfilePicture = null;
            }
            else
            {
                CurrentUserAccount.DisplayName = "Invalid user, not logged in.";
            }
        }
    }
}
