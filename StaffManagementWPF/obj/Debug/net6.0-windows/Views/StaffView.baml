   M S B A M L   `   `   `  ����M  IStaffManagementWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:StaffManagementWPF.ViewsStaffManagementWPF.Views  5      (    "StaffManagementWPF.Views.StaffView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5      2local&clr-namespace:StaffManagementWPF.Views  5      .��5
      �   � RowDefinitions  5   
   �� 5      $��50 �6   �� 5      .+�5   
   � $��0��6    � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $	��120 �6#   .+�5      ��  �� Orientation$ 
Horizontal=�6   $	��Top=�5      $��0��5      .+�5      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ Search=�6   $��20��6-   $��20��69      plainTextColor3   
Foreground# [  6D   �� 5      -   5         ��Name$ 	txtSearch��5      $��	Search...��6-   $��13(�6>   $��24��5      $	��300��6&   
������ $��Medium"�5      $��
Montserrat)�5      #��[  5        �� 
CaretBrush# [  5!      #��[  5"      $��0,0,0,1q�5#      $��Center=�5$      $��5,5,0,0q�5%      6-   5&      �� 5(      -   5         ��Name$ 	btnSearch��5(   %   $��1��6   $��Search��5)      $��14(�5*      $��
Montserrat)�5+       � Cursor$ Arrow��5,      $��0q�5-      
�������$	��Top=�5/      ��52      �� 53      	 �� 
TargetType"	 ��6   .�54      �� 
 �� Property
 � �� �� Value �#773DFF67   �� 55      
 � �� 56      �� 57   "    �� 
TargetType" ��62   .R�58   &   �� $��30��6-    �� CornerRadius$ 20��69   #��z��59   -   ._�5:   *   �� $��Center=�6;   $��Center=�5;   ;   5<   '   5=   #   5?       �� Triggers 5@      P� 5A       P� Property �@J�IsMouseOver P� Value$
 True��6=   . �5B   "   �� 
 � �� �#836EFB6?   5C      5E      5G      5H      �� 5K   
   $��1��6   ���#200F53$ 10��5M       �� Padding$ 10q�5N      ._�5O      &   System.Windows.Controls.DataGrid  -   5          Name$ dgStaffs��5O         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6)      AutoGenerateColumns$ False��69   ���#200F53  DataGridStyle1#���  5Q        DataGridCellStyle1   	CellStyle# �  5R        DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  5S        DataGridRowStyle1   RowStyle# �  5T         Columns 5u      4  .System.Windows.Controls.DataGridCheckBoxColumn  5w      ,  &System.Windows.Controls.DataGridColumn   CanUserResize$ False��6-      Width$
 auto 6C     CheckBoxStyle11  +System.Windows.Controls.DataGridBoundColumn   ElementStyle# �  6P      HeaderTemplate 5x      �� 5y      .R�5z   "   �� #���  6+   5{      5}      0  *System.Windows.Controls.DataGridTextColumn  5�      $ False��6)      Header$ ID��6Z      
IsReadOnly$
 True��6f   $ 50 6x      FontSize$ 16Q�6�       Binding  6?   �� *UserId+6�     5�      $ Username��6F   $
 True��6X   $
 auto 6j   $ 16Q�6w     6)   �� *
Username+6w     5�      $ Fullname��6F   $
 True��6X   $
 auto 6j   $ 16Q�6w     6)   �� *
Fullname+6w     5�      $ Email��6C   $
 True��6R   $
 auto 6d   $ 16Q�6q     6)   �� *Email+6q     5�      $ Phone��6C   $
 True��6R   $
 auto 6d   $ 16Q�6q     6)   �� *Phone+6q     5�      $ Address��6E   $
 True��6V   $ 16Q�6h     6)   �� *	Address+6h   4	  .System.Windows.Controls.DataGridTemplateColumn	  5�      $ False��6-   $ 
Operations��6C   $
 True��6W   $
 auto 6i   ! 	  CellTemplate! 5�      �� 5�      .R�5�   "   �� $ 
Horizontal=�6-   .+�5�   &   ��   gridEditButton#��[ 6-   .��5�   *     $ PenToSquare=�67   5�   '   �� 5�   &   $ btnGridDelete��6-   -   5          gridRemoveButton#��[ 5�   D   $��5 0 0 0q�6n   .��5�   *     $ Trash=�67   5�   '   5�   #   5�      5�      5�      5�      5�      5�      