   M S B A M L   `   `   `  ����M  IStaffManagementWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:StaffManagementWPF.ViewsStaffManagementWPF.Views  5   	   M+clr-namespace:StaffManagementWPF.ViewModelsStaffManagementWPF.ViewModels  5   	   ,    &StaffManagementWPF.Views.StaffMainView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	   2local&clr-namespace:StaffManagementWPF.Views  5   	   ;	viewModel+clr-namespace:StaffManagementWPF.ViewModels  5   	     � Title$  
MainWindow��5
   	   $	��700��6   $
��1300��6)    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency$
 True��5   "    � DataContext 5      6   0StaffManagementWPF.ViewModels.StaffMainViewModel  5   
    � 	Resources 5       �� DataType1   +StaffManagementWPF.ViewModels.HomeViewModel'   !StaffManagementWPF.Views.HomeView9   3StaffManagementWPF.ViewModels.PersonalInfoViewModel/   )StaffManagementWPF.Views.PersonalInfoView��%�   (��       5      *, +)(�� 2     5      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      5      .��5      ��  �� CornerRadius$ 10��6   $��0q�5       J� Opacity$
 0.95Q�5      ._�5!   
   � 	 � ColumnDefinitions	 5"      �� 5#      $	��250 �6#   �� 5$      .+�5(      �� $��0��6   $ 10 50 50 50��6%   $��2q�6@   ��5)      �� 5*      
 �� 
StartPoint$

 0, 0&�6*    �� EndPoint$
 1, 1&�6<   .��5,      �    winBorderColor1 � Color# [  6'    � Offset$ 0Q�6P   � 5-        winBorderColor2# [ 6'   $
 0.75Q�6P   � 5.        winBorderColor3# [ 6'   $ 1Q�6P   5/      ��51      �� 52      $

 0, 0&�6*   $ 1, 0.7&�6<   .��53      �   secondaryBackColor1# [ 6'   $ 0Q�54   '   � 56        secondaryBackColor2# [ 6'   $ 1Q�57   '   59      ._�5>      ��  �� Orientation$ Vertical=�6   .+�5@      �� $ 
Horizontal=�6!   $��35��5A   !   $��
15 25 0 40q�6-   .+�5C      �� $��../Images/team.png��6    $��30��6<   �� 5D      $��STAFF CONSOLE��6$     titleColor2#��[ 5E   $   $��20(�5F   $   $��
Montserrat)�5G   $   $��Medium"�5H   $   $��Center=�5I   $   $��10 0 0 0q�5J   $   5M      	� 5P        
MenuButton#��[ 6"    
 color1
 � Tag# [ 5Q   "    d� 	IsChecked$
 TrueY�5S   "   ��5R   "   �� *ShowHomeViewCommand+.��5U      �� $ 
Horizontal=�6%   .+�5V      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$
 Home=�6+     MenuButtonIcon#��[ 67   �� 5W      $��	Dashboard��6(    	 MenuButtonText#��[	 69   5X      5Y      	� 5[      #��[ 6"    

 color3# [
 5\   "   ��5]   "   �� *ShowPersonalInfoViewCommand+.��5_      �� $ 
Horizontal=�6%   .+�5`        $ UserGear=�6+   #��[ 6;   �� 5a      $��Personal Info��6(   #��[	 6=   5b      5c      	� 5e      #��[ 6"    
 color4# [ 5f   "   .��5h      �� $ 
Horizontal=�6%   .+�5i        $ Tools=�6+   #��[ 68   �� 5j      $��Settings��6(   #��[	 68   5k      5l      	� 5n      #��[ 6"    
 color2# [ 5o   "   .��5q      �� $ 
Horizontal=�6%   .+�5r        $ 
CircleInfo=�6+   #��[ 6=   �� 5s      $��About��6(   #��[	 65   5t      5u      	� 5w      -   5         	�Name$ 	btnLogout��5w   "   #��[ 5x   "     color11# [ 5y   "   .��5|      �� $ 
Horizontal=�6%   .+�5}        $ ArrowRightFromBracket=�6+   #��[ 6H   �� 5~      $��Logout��6(   #��[	 66   $��20(�5   (   5�      5�      5�      5�      �� 5�      $��1��6   $ 50 50 10 50��6%   $��2q�6@   ��5�      �� 5�      $

 0, 0&�6*   $
 1, 1&�6<   .��5�      � # [  6'   $ 0Q�6P   � 5�      # [ 6'   $
 0.75Q�6P   � 5�      # [ 6'   $ 1Q�6P   5�      ��5�      �� 5�      $

 1, 1&�6*   $
 0, 0&�6<   .��5�      �   primaryBackColor1# [ 6'   $ 0Q�5�   '   � 5�        primaryBackColor2# [ 6'   $ 1Q�5�   '   5�      ._�5�      �  � RowDefinitions 5�      �� 5�      $��25 �6(   �� 5�      $��35 �6(   �� 5�      .+�5�      �� -   5         ��Name$ pnlControlBar��5�   !   $��0��68   $ 
Horizontal=�5�   !   $��RightToLeft=�5�   !   
������ $��0 0 5 0q�5�   !   .+�5�      �� -   5         ��Name$ btnClose��5�   !   $��X��5�      $��40 5 0 0q�6)   
�������$��12(�5�       � Cursor$
 Hand��5�      $��2��5�        CloseButton#��[ 5�      �� 5�      -   5        $ btnMaximize��5�   !   $��O��5�      $��10 5 0 0q�6)   
�������$��16(�5�      $
 Hand��5�      $��1��5�        MaximizeButton#��[ 5�      �� 5�      -   5        $ btnMinimize��5�   !   $��-��5�      $��10 5 0 0q�6)   
�������$��16(�5�      $
 Hand��5�      $��1��5�        MinimizeButton#��[ 5�      5�      � 5�      $��1��6   	 5�      �� 5�      �� 5�      .+�5�      �� $��0��6%   $ 
Horizontal=�5�   !   $��Center=�5�   !   .+�5�        $��20��6A   $��20��6M      
Foreground# [ 5�   '   $��	35 0 10 0q�5�   '    5�   +   �� *Icon+5�   '   �� 5�      #��[ 5�   (   $��16(�5�   (   $��
Montserrat)�66   $��Medium"�5�   (   $��Center=�5�   (   ��5�   (   �� *	Caption+5�   (   5�      �� 5�      -   5         ��Name$ txtbWelcomeUsername��5�   $   $��1��6A   $��Welcome��5�   $   
�������$��20(�5�   $   $��
Montserrat)�62   $
��Bold"�5�   $   $��Center=�5�   $   $��Center=�5�   $   5�      �� 5�      $��2��5�   %   $��25q�5�   %   ��5�   %   �� *CurrentChildView+5�   %   5�      5�      5�      5�      5�      