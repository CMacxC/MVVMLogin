   M S B A M L   `   `   `  ����D  @LoginForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LoginForm.ViewLoginForm.View  5   	   9!clr-namespace:LoginForm.ViewModelLoginForm.ViewModel  5   	   C&clr-namespace:LoginForm.CustomControlsLoginForm.CustomControls  6=       LoginForm.View.vLogin   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:LoginForm.View     5   	   7	viewModel!clr-namespace:LoginForm.ViewModel     5   	   Acustomcontrols&clr-namespace:LoginForm.CustomControls     6=   -   5          � Title$  vLogin��5	   	   $	��550��5
   	   $	��800��5   	    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      (   "LoginForm.ViewModel.LoginViewModel  5   
    � 	Resources 5         BooleanToVisibility��%   &	        �� 5   
   6'   5      y�5      �� 5   
    �� Path$ IsViewVisible�6    �� Mode$ TwoWay=�6'   	 �� 	Converter#	 [  65   .��5      �� 
 �� CornerRadius$
 20��6   ��5!   
   �� 5"       �� ImageSource$ /Images/back-image.jpg��6    j� Stretch$
 Fill=�5#      ._�5&   
   �� $
 10��6   $	��1.5q�5'       J� Opacity$	 0.9Q�5(      ��5*      �� 5+       �� 
StartPoint$
 0, 0&�6&    �� EndPoint$
 1, 1&�68   .��5,      �  � Color$ #462AD8��6#    � Offset$ 0Q�63   � 5-      $ #DA34AE��6#   $
 0.65Q�63   � 5.      $ #8A16C1��6#   $ 1Q�63   5/      ��52      �� 53      $
 0, 1&�6&   $
 1, 0&�68   .��54      � $ #060531��6#   $ 0Q�63   � 55      $ #1B1448��6#   $
 0.75Q�63   56      ._�59      �  � RowDefinitions 5:      �� 5<      $��30 �6$   �� 5=      .+�5@      �  � ColumnDefinitions 5A      �� 5B      �� 5C      $��30 �6+   �� 5D      $��30 �6+   �� 5E      $��5 �6+   .+�5H      �� -   5         ��Name$ btn_Minimize��5H      $��0q�5I      $��-��5J      
�������$��16(�5L      $��
Montserrat)�5M       � Cursor$
 Hand��5N      $��1��5O      ��5R      �� 5S       �� 
TargetType" ��6$   .�5T   "   ��  �� Property � �� �� Value �#28AEED6?    �� Triggers 5U   "   P� 5V   &    P� Property �@J�IsMouseOver P� Value$
 True��6E   . �5W   *   ��  � �� �#278BEF6G   5X   '   5Z      ��5]      �� 5^       �� 
TargetType" ��6.   .R�5_   "   �� $��18��6)   $��20��5`   )   $
 9��5a   )   #��z��5b   )   ._�5c   &   �� $��Center=�67   $��Center=�5d   7   5f   #   5g      5j      �� 5l      -   5        $ 
btn_Cerrar��5l      $��0q�5m      $��x��5n      
�������$��16(�5p      $��
Montserrat)�5q      $
 Hand��5r      $��2��5s      ��5v      �� 5w      " ��6$   .�5x   "   ��  � �� �#DA34AE6?    5y   "   P� 5z   &    �@J�IsMouseOver$
 True��6E   . �5{   *   ��  � �� �#C62DAE6G   5|   '   5~      ��5�      �� 5�      " ��6.   .R�5�   "   �� $��18��6)   $��20��5�   )   $
 9��5�   )   #��z��5�   )   ._�5�   &   �� $��Center=�67   $��Center=�5�   7   5�   #   5�      5�      5�      �� 5�      $	��250��6   $��1��5�       �� Orientation$ Vertical=�5�      $��0, 35, 0, 0q�5�      .+�5�      �� $��/Images/Logo.png��6   $	��100��5�      $	��100��6(   �� 5�      $��RJ CODE��6    
�������$��25(�5�       $��Medium"�5�       $��
Montserrat)�5�       $��Center=�5�       �� 5�      $J��DLearning to code is useful no matter what your career ambitions are.��6    
�������$��12(�5�       $��Medium"�5�       $��
Montserrat)�5�       $
��Wrap=�5�        �� TextAlignment$ Center=�5�       $��
0, 5, 0, 0q�5�       �� 5�      $��	Username:��6    
�������$��12(�5�       $��Medium"�5�       $��
Montserrat)�5�       $��0, 35, 0, 0q�5�       �� 5�      -   5         ��Name$ txt_User��5�      $��14(�5�      $��Medium"�5�      $��
Montserrat)�5�      
�������  �� 
CaretBrush
  �����
�������$��
0, 0, 0, 1q�5�      $��28��5�      $��Center=�5�      $��
0, 5, 0, 0q�5�      $��20, 0, 0, 0q�5�      ��5�      �� *
Username+! �� UpdateSourceTrigger$! PropertyChanged=�.��5�   4   ��5�      �� 5�      $ /Images/user-icon.png��6)   $
 None=�5�   )   " j� 
AlignmentX$
" Left=�5�   )   .��5�   .   5�      �� 5�      $��	Password:��6    
�������$��12(�5�       $��Medium"�5�       $��
Montserrat)�5�       $��0, 15, 0, 0q�5�       2   ,LoginForm.CustomControls.BindablePasswordBox  5�      $��28��5�   9   $��
0, 5, 0, 0q�5�   9   #   Password# 5�   9   �� *
Password+$ TwoWay=�$! PropertyChanged=�5�      �� 5�      ���#D7596D$��12(�5�       $��Medium"�5�       $��
Montserrat)�5�       $��0, 15, 0, 0q�5�       $
��Wrap=�5�       ��5�       �� *ErrorMessage+5�       �� 5�      -   5        $ 	btn_Login��5�      $��0q�5�      $��LOG IN��5�      
�������$��16(�5�      $��
Montserrat)�5�      $
 Hand��5�      $��2��5�      $��0, 30, 0, 0q�5�      ��5�      �� *LoginCommand+��5�      �� 5�      " ��6$   .�5�   "   ��  � �� �#462AD86?    5�   "   P� 5�   &    �@J�IsMouseOver$
 True��6E   . �5�   *   ��  � �� �#28AEED6G   5�   '   5�      ��5�      �� 5�      " ��6.   .R�5�   "   �� $	��150��6)   $��30��5�   )   $
 5��5�   )   #��z��5�   )   ._�5�   &   �� $��Center=�67   $��Center=�5�   7   5�   #   5�      5�      �� 5     $ 
Horizontal=�6!   $��Center=�5  !   $��0, 15, 0, 0q�5  !   .+�5     �� $��Forgot Password?��6$   
�������$��12(�5  $   $��Medium"�5  $   $��
Montserrat)�5	  $   �� 5     $��Reset��6$   
�������$��12(�5  $   $��Medium"�5  $   $��
Montserrat)�5  $   $
 Hand��5  $   $��
8, 0, 0, 0q�5  $   5     5     5     5     5     5     