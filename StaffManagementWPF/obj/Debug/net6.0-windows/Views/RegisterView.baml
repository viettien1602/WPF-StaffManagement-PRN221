   M S B A M L   `   `   `  ����M  IStaffManagementWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:StaffManagementWPF.ViewsStaffManagementWPF.Views  5   	   +    %StaffManagementWPF.Views.RegisterView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:StaffManagementWPF.Views     5   	   -   5          � Title$  FrmRegister��5   	   $	��550��6   $	��800��6*    � WindowStyle$
 None=�5	   	    � 
ResizeMode$ NoResize=�5
   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   "   .��5      ��  �� CornerRadius$ 12��6   ��5   
   �� 5       �� ImageSource$ ../Images/back-image.jpg��6    j� Stretch$
 None=�5      ._�5   
   �� $ 10��6   $��1q�5       J� Opacity$	 0.8Q�5      ��5      �� 5      	 �� 
StartPoint$
	 0, 0&�6&   
 �� EndPoint$

 1, 1&�68   .��5      �    winBorderColor1 � Color# [  6#    � Offset$ 0Q�6L   � 5        winBorderColor2# [ 6#   $
 0.75Q�6L   � 5         winBorderColor3# [ 6#   $ 1Q�6L   5!      ��5#      �� 5$      $
	 0, 1&�6&   $

 1, 0&�68   .��5&      �   primaryBackColor1# [ 6#   $ 0Q�6N   � 5'        primaryBackColor2# [ 6#   $
 0.75Q�6N   5(      ._�5+      �  � RowDefinitions 5,      �� 5-      $��30 �6$   �� 5.      .+�52      �  � ColumnDefinitions 53      �� 54      �� 55      $��25 �6+   �� 56      $��25 �6+   �� 57      $��5 �6+   .+�5:      �� $��REGISTER��6    
�������$��10(�5<       $��
Montserrat)�5=       $��0��5>       $��Center=�5?       $��	10 0 0 0 q�5@       �� 5C      -   5         ��Name$ btnMinimize��5C      $��-��5D      
�������$��16(�5F       � Cursor$
 Hand��5G      $��1��5H        MinimizeButton#��[ 5J      �� 5O      -   5        $ btnClose��5O      $��X��5P      
�������$��12(�5R      $
 Hand��5S      $��2��5T        CloseButton#��[ 5V      5Y      �� 5\      $	��250��6   $��2��5]       �� Orientation$ Vertical=�5^      .+�5`      �� $��../Images/team.png��6   $��70��68   $��70��6C   �� 5a      $��REGISTER��6    
�������$��25(�5c       $��Medium"�5d       $��
Montserrat)�5e       $��Center=�5f       �� 5h      $5��/Fill in the information to create staff account��6    
�������$��12(�5j       $��Medium"�6.   $��
montserrat)�5k       $
��Wrap=�5l        �� TextAlignment$ Center=�5m       $��0 5 0 0q�5n       �� 5q      $��Fullname��6    
�������$��14(�5s       $��Medium"�6.   $��
montserrat)�5t       $��0 10 0 0q�5u       �� 5w      -   5         ��Name$ txtFullname��5w      $��13(�5x      $��Medium"�6,   $��
Montserrat)�6@   
������� �� 
CaretBrush
 �����
�������$��0 0 0 1q�5|      $��28��5}      $��Center=�5~      $��0 5 0 0q�5      $��20 0 0 0q�5�      .��5�      ��5�      �� 5�      $ ../Images/id-card.png��6)   $
 None=�5�   )    j� 
AlignmentX$
 Left=�68   .��5�   .   5�      �� 5�      $��Username��6    
�������$��14(�5�       $��Medium"�6.   $��
montserrat)�5�       $��0 10 0 0q�5�       �� 5�      -   5        $ txtUsername��5�      $��13(�5�      $��Medium"�6,   $��
Montserrat)�6@   
�������
 �����
�������$��0 0 0 1q�5�      $��28��5�      $��Center=�5�      $��0 5 0 0q�5�      $��20 0 0 0q�5�      .��5�      ��5�      �� 5�      $ ../Images/user-icon.png��6)   $
 None=�5�   )   $
 Left=�68   .��5�   .   5�      �� 5�      $��Password��6    
�������$��14(�5�       $��Medium"�6.   $��
montserrat)�5�       $��0 15 0 0q�5�       G� 5�      -   5         G�Name$ txtPassword��5�   "   $��13(�5�      $��Medium"�6,   $��
Montserrat)�6@   
������� G� 
CaretBrush
 �����
�������$��0 0 0 1q�5�      $��28��5�      $��Center=�5�      $��0 5 0 0q�5�      $��20 0 0 0q�5�      ��5�      �� 5�      $ ../Images/key-icon.png��6)   $
 None=�5�   )   $
 Left=�68   5�      �� 5�      $��Confirm Password��6    
�������$��14(�5�       $��Medium"�6.   $��
montserrat)�5�       $��0 15 0 0q�5�       G� 5�      -   5        $ txtConfirmPassword��5�   "   $��13(�5�      $��Medium"�6,   $��
Montserrat)�6@   
�������
 �����
�������$��0 0 0 1q�5�      $��28��5�      $��Center=�5�      $��0 5 0 0q�5�      $��20 0 0 0q�5�      ��5�      �� 5�      $ ../Images/approved.png��6)   $
 None=�5�   )   $
 Left=�68   5�      �� 5�      -   5         ��Name$ 	txtbError��5�       $�� ��63   $��12(�5�       $��
Montserrat)�5�       
���  ��$��0 20 0 0q�5�       $ Center=�5�       �� 5�      -	   5        $ btnRegister��5�      $��REGISTER��5�      
�������$��12(�5�      $
 Hand��5�      $��2��5�      $��0 10 0 0q�5�        LoginButton#��[ 5�      5�      �� 5�      $ 
Horizontal=�6!   $��Center=�5�   !   $��0 15 0 0q�5�   !   .+�5�      �� $��Already have an account?��6$   
�������$��12(�5�   $   $��Medium"�62   $��
montserrat)�5�   $   $��Center=�6=   �� 5�      -
   5        $ btnLogin��5�   !   $��Login��5�   !   
�������$��14(�5�   !   $��Medium"�6/   $��
montserrat)�5�   !   $��0q�5�   !   $
 Hand��5�   !   $��8 0 0 0q�5�   !     ToRegisterButton#��[ 5�   !   5�   !   5�      5�      5�      5      5     5     