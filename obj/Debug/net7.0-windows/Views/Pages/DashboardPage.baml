   M S B A M L   `   `   `  ����D  @ZMCL_neao, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:ZMCL_neao.Views.PagesZMCL_neao.Views.Pages  5      )    #ZMCL_neao.Views.Pages.DashboardPage   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:ZMCL_neao.Views.Pages     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      A =Wpf.Ui, Version=3.0.0.0, Culture=neutral, PublicKeyToken=null/ui&http://schemas.lepo.co/wpfui/2022/xaml  5        N� Title$  DashboardPage��5	         ApplicationBackgroundBrush  Wpf.Ui.Markup.Design   
Background# �   5        TextFillColorPrimaryBrush   
Foreground# �  5       N� 
Foreground# �  5      .��5      � $	��Top=�6   $��
0,0,-110,0q�6#   $	��500��67    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
     Wpf.Ui.Controls.Button  -   5        $��1��5      $��MineCraft,启动！��5         Icon*  $Wpf.Ui.Controls.IconElementConverter$ Fluent24 5      $��625,380,0,0q�6   $	��Top=�62   $	��295��6J   $��65��6V   $��20(�6b   ��5      �� *#!ViewModel.CounterIncrementCommand+ �� Mode$ OneWay=�5   p     Wpf.Ui.Controls.TextBox  5   
   -   5          Name$ offlineplayerid��5   T   $��1��6   $��625,278,0,156q�6%      PlaceholderText$ 离线玩家名��6<   6T   �� 5   
   -   5        	 ��Name$	 gamelist��5   ~   $��1��6   $��610,10,25,0q�6#   $	��Top=�68   
 �� SelectedValuePath$
 Id��6P    �� DisplayMemberPath$ Id��6g   6~   �� 5    
   -   5        $	 javalist��5    �   $��1��6   $��610,51,25,0q�6#   $	��Top=�68   $
 JavaDirectoryPath��6P   $ JavaDirectoryPath��6v   6�   5"      5#      