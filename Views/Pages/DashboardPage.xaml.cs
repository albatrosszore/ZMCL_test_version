// This Source Code Form is subject to the terms of the MIT License.
// If a copy of the MIT was not distributed with this file, You can obtain one at https://opensource.org/licenses/MIT.
// Copyright (C) Leszek Pomianowski and WPF UI Contributors.
// All Rights Reserved.

using MinecraftLaunch.Launch;
using MinecraftLaunch.Modules.Models.Launch;
using MinecraftLaunch.Modules.Utilities;
using MinecraftOAuth.Authenticator;
using System.Diagnostics;
using Wpf.Ui.Controls;
using ZMCL_neao.ViewModels.Pages;

namespace ZMCL_neao.Views.Pages
{
    public partial class DashboardPage : INavigableView<DashboardViewModel>
    {
        public DashboardViewModel ViewModel { get; }

        public DashboardPage(DashboardViewModel viewModel)
        {
            ViewModel = viewModel;
            DataContext = this;

            InitializeComponent();
            javalist.ItemsSource = JavaUtil.GetJavas();
            gamelist.ItemsSource = new GameCoreUtil(".minecraft").GetGameCores();
        }

        private async void Button_Click(object sender, RoutedEventArgs e)
        {
            OfflineAuthenticator authenticator = new(offlineplayerid.Text);
            GameCoreUtil gcu = new(".minecraft"); //默认为.minecraft
            var lc = new LaunchConfig(authenticator.Auth(), new(javalist.Text + "javaw.exe"));
            var launcher = new JavaMinecraftLauncher(lc, new GameCoreUtil(".minecraft"));
            JavaMinecraftLauncher jml = new(lc, gcu);
            await launcher.LaunchTaskAsync(gamelist.Text, x =>
            {
                Debug.WriteLine(x.Item2);
            });
        }

    }
}
