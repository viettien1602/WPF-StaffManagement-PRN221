   M S B A M L   `   `   `  ����M  IStaffManagementWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:StaffManagementWPF.ViewsStaffManagementWPF.Views  5   	   M+clr-namespace:StaffManagementWPF.ViewModelsStaffManagementWPF.ViewModels  5   	   ,    &StaffManagementWPF.Views.AdminMainView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	   2local&clr-namespace:StaffManagementWPF.Views  5   	   ;	viewModel+clr-namespace:StaffManagementWPF.ViewModels  5   	     � Title$  
MainWindow��5
   	   $	��700��6   $
��1300��6)    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency$
 True��5   "    � DataContext 5      6   0StaffManagementWPF.ViewModels.AdminMainViewModel  5   
    � 	Resources 5       �� DataType1   +StaffManagementWPF.ViewModels.HomeViewModel'   !StaffManagementWPF.Views.HomeView2   ,StaffManagementWPF.ViewModels.StaffViewModel(   "StaffManagementWPF.Views.StaffView9   3StaffManagementWPF.ViewModels.PersonalInfoViewModel/   )StaffManagementWPF.Views.PersonalInfoView��%�   (��       5      *, +)(�� 2     5      *, +)(�� d     5      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      5      .��5      ��  �� CornerRadius$ 10��6   $��0q�5        J� Opacity$
 0.95Q�5!      ._�5$   
   � 	 � ColumnDefinitions	 5%      �� 5&      $	��250 �6#   �� 5'      .+�5+      �� $��0��6   $ 10 50 50 50��6%   $��2q�6@   ��5,      �� 5-      
 �� 
StartPoint$

 0, 0&�6*    �� EndPoint$
 1, 1&�6<   .��5/      �    winBorderColor1 � Color# [  6'    � Offset$ 0Q�6P   � 50        winBorderColor2# [ 6'   $
 0.75Q�6P   � 51        winBorderColor3# [ 6'   $ 1Q�6P   52      ��54      �� 55      $

 0, 0&�6*   $ 1, 0.7&�6<   .��56      �   secondaryBackColor1# [ 6'   $ 0Q�57   '   � 59        secondaryBackColor2# [ 6'   $ 1Q�5:   '   5<      ._�5A      ��  �� Orientation$ Vertical=�6   .+�5C      �� $ 
Horizontal=�6!   $��35��5D   !   $��
15 25 0 40q�6-   .+�5F      �� $��../Images/team.png��6    $��30��6<   �� 5G      $��ADMIN CONSOLE��6$     titleColor2#��[ 5H   $   $��20(�5I   $   $��
Montserrat)�5J   $   $��Medium"�5K   $   $��Center=�5L   $   $��10 0 0 0q�5M   $   5P      	� 5S        
MenuButton#��[ 6"    
 color1
 � Tag# [ 5T   "    d� 	IsChecked$
 TrueY�5V   "   ��5U   "   �� *ShowHomeViewCommand+.��5X      �� $ 
Horizontal=�6%   .+�5Y      !  FontAwesome.Sharp.IconImage  �	  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]] 	  Icon$
 Home=�6+     MenuButtonIcon#��[ 67   �� 5Z      $��	Dashboard��6(    	 MenuButtonText#��[	 69   5[      5\      	� 5^      #��[ 6"    

 color6# [
 5_   "   ��5`   "   �� *ShowStaffViewCommand+.��5b      �� $ 
Horizontal=�6%   .+�5c        $ 	UserGroup=�6+   #��[ 6<   �� 5d      $��Staffs��6(   #��[	 66   5e      5f      	� 5h      #��[ 6"    
 color3# [ 5i   "   ��5j   "   �� *ShowPersonalInfoViewCommand+.��5l      �� $ 
Horizontal=�6%   .+�5m        $ UserGear=�6+   #��[ 6;   �� 5n      $��Personal Info��6(   #��[	 6=   5o      5p      	� 5r      #��[ 6"    
 color4# [ 5s   "   .��5u      �� $ 
Horizontal=�6%   .+�5v        $ Tools=�6+   #��[ 68   �� 5w      $��Settings��6(   #��[	 68   5x      5y      	� 5{      #��[ 6"    
 color2# [ 5|   "   .��5~      �� $ 
Horizontal=�6%   .+�5        $ 
CircleInfo=�6+   #��[ 6=   �� 5�      $��About��6(   #��[	 65   5�      5�      	� 5�      -   5         	�Name$ 	btnLogout��5�   "   #��[ 5�   "     color11# [ 5�   "   .��5�      �� $ 
Horizontal=�6%   .+�5�        $ ArrowRightFromBracket=�6+   #��[ 6H   �� 5�      $��Logout��6(   #��[	 66   $��20(�5�   (   5�      5�      5�      5�      �� 5�      $��1��6   $ 50 50 10 50��6%   $��2q�6@   ��5�      �� 5�      $

 0, 0&�6*   $
 1, 1&�6<   .��5�      � # [  6'   $ 0Q�6P   � 5�      # [ 6'   $
 0.75Q�6P   � 5�      # [ 6'   $ 1Q�6P   5�      ��5�      �� 5�      $

 1, 1&�6*   $
 0, 0&�6<   .��5�      �   primaryBackColor1# [ 6'   $ 0Q�5�   '   � 5�        primaryBackColor2# [ 6'   $ 1Q�5�   '   5�      ._�5�      �  � RowDefinitions 5�      �� 5�      $��25 �6(   �� 5�      $��35 �6(   �� 5�      .+�5�      �� -   5         ��Name$ pnlControlBar��5�   !   $��0��68   $ 
Horizontal=�5�   !   $��RightToLeft=�5�   !   
������ $��0 0 5 0q�5�   !   .+�5�      �� -   5         ��Name$ btnClose��5�   !   $��X��5�      $��40 5 0 0q�6)   
�������$��12(�5�       � Cursor$
 Hand��5�      $��2��5�        CloseButton#��[ 5�      �� 5�      -   5        $ btnMaximize��5�   !   $��O��5�      $��10 5 0 0q�6)   
�������$��16(�5�      $
 Hand��5�      $��1��5�        MaximizeButton#��[ 5�      �� 5�      -   5        $ btnMinimize��5�   !   $��-��5�      $��10 5 0 0q�6)   
�������$��16(�5�      $
 Hand��5�      $��1��5�        MinimizeButton#��[ 5�      5�      � 5�      $��1��6   	 5�      �� 5�      �� 5�      .+�5�      �� $��0��6%   $ 
Horizontal=�5�   !   $��Center=�5�   !   .+�5�        $��20��6A   $��20��6M    	  
Foreground# [ 5�   '   $��	35 0 10 0q�5�   '    5�   +   �� *Icon+5�   '   �� 5�      #��[ 5�   (   $��16(�5�   (   $��
Montserrat)�66   $��Medium"�5�   (   $��Center=�5�   (   ��5�   (   �� *	Caption+5�   (   5�      �� 5�      -   5         ��Name$ txtbWelcomeUsername��5�   $   $��1��6A   $��Welcome��5�   $   
�������$��20(�5�   $   $��
Montserrat)�62   $
��Bold"�5�   $   $��Center=�5�   $   $��Center=�5�   $   5�      �� 5�      $��2��5�   %   $��25q�5�   %   ��5�   %   �� *CurrentChildView+5�   %   5     5     5     5	     5
     