   M S B A M L   `   `   `  ����U  QWpfAppNotepadMaterilDesign, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:WpfAppNotepadMaterilDesignWpfAppNotepadMaterilDesign  5   	   ]3clr-namespace:WpfAppNotepadMaterilDesign.ViewModels%WpfAppNotepadMaterilDesign.ViewModels  5   	   Y1clr-namespace:WpfAppNotepadMaterilDesign.Commands#WpfAppNotepadMaterilDesign.Commands  5   	   +    %WpfAppNotepadMaterilDesign.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:WpfAppNotepadMaterilDesign     5   	   J
viewmodels3clr-namespace:WpfAppNotepadMaterilDesign.ViewModels     5   	   Fcommands1clr-namespace:WpfAppNotepadMaterilDesign.Commands     5   	   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Notepad��5
   	   $	��450��6   $	��800��6&      MaterialDesignBody#���   5   	     MaterialDesignPaper#���  5   	   $��Medium"�5   	   $��14(�5   	    � WindowStyle$ ThreeDBorderWindow=�5   :   ��6	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension   J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$, &commands:SearchCommand.FindWordCommand��5      6J     5   
   -   5        $ ApplicationCommands.Find��5      6P   .��5      ]� $��1q�6   .+�5   
   o� $	��Top=�6   @�5      m� 5      $
��File��6   .@�5      m� $	��New��6    m� Command 6,   �� *File.NewCommand+m� 5      $
��Open��6    6-   �� *File.OpenCommand+m� 5      $
��Save��6    6-   �� *File.SaveCommand+m� 5       $��
Save as...��6    63   �� *File.SaveAsCommand+�� 5!      m� 5"      $
��Exit��6    6-   �� *ExitCommand+5#      m� 5$      $
��Edit��6    � DataContext 6)   �� *Editor+.@�5%      m� $
 Redo��6    m� Icon 5&      �� 5'      $��/Icons/redo.png��6$   5)      m� 5*      $
 Undo��6    5+      �� 5,      $��/Icons/undo.png��6$   5.      �� 5/      m� 50      $	 Cut��6     51      �� 52      $��/Icons/content-cut.png��6$   54      m� 55      $
 Copy��6    56      �� 57      $��/Icons/content-paste.png��6$   59      m� 5:      $ Paste��6     5;      �� 5<      $��/Icons/content-paste.png��6$   5>      m� 5?      $ 	SelectAll��6     5@      �� 5A      $��/Icons/select-all.png��6$   5C      �� 5D      m� 5E      $��Format��6    6/   �� *FormatCommand+�� 5F      m� 5G      $��	Word wrap��6    62   �� *WrapCommand+ 5H      �� 5I      $��/Icons/wrap.png��6$   5K      5L      m� 5M      $
��Help��6    6)   �� *Help+.@�5N      m� $��About��6    6.   �� *HelpCommand+5O      5Q      `� 5R   
   $	��Top=�6    `� Orientation$ 
Horizontal=�6+   $
��Left=�6D    `� IsLocked .  	 � 	Resources	 5S        
toolBarBtn
 �� 
TargetType �� Property �� Value��%�   &	       �� 5T      "
 ��6+   �5U      �� 5V       � ��$ 25��62   �� 5W       � ��$ 25��63   5Y      5Z      .�5[      c� .@�5\      ��  � ToolTip$ New File��6   #��[ 6P   ��6,   �� *File.NewCommand+.��5]      �� $��/Icons/new-box.png��6   5^      �� 5_      $ 	Open File��6   #��[ 6R   ��6-   �� *File.OpenCommand+.��5`      �� $��/Icons/folder-open.png��6   5a      �� 5b      $ 	Save File��6   #��[ 6R   ��6-   �� *File.SaveCommand+.��5c      �� $%��/Icons/content-save-outline.png��6   5d      �� 5e      $ Save as��6   #��[ 6R   ��6+   �� *File.SaveAsCommand+.��5f      �� $��/Icons/folder.png��6   5g      5h      c� 5i      .@�5j      �� $
 Copy��6   $
��Copy��6(   #��[ 67   .��5k      �� $��/Icons/content-copy.png��6   5l      �� 5m      $	 Cut��6   $	��Cut��6'   #��[ 65   .��5n      �� $��/Icons/content-cut.png��6   5o      �� 5p      $ Paste��6   $��Paste��6)   #��[ 69   .��5q      �� $��/Icons/content-paste.png��6   5r      �� 5s      $ 
Select All��6   $��	SelectAll��6.   #��[ 6B   .��5t      �� $��/Icons/select-all.png��6   5u      5v      c� 5w      .@�5x      �� $
 Redo��6   $
��Redo��6(   #��[ 67   .��5y      �� $��/Icons/redo.png��6   5z      �� 5{      $
 Undo��6   $
��Undo��6(   #��[ 67   .��5|      �� $��/Icons/undo.png��6   5}      �� 5~      �� 5      $
 Wrap��6   #��[ 6O   ��6(   �� *Editor.WrapCommand+.��5�      �� $��/Icons/wrap.png��6   5�      5�      c� 5�      .@�5�      �� -   5         ��Name$ 	txbSearch��5�      $��30��6S   $	��150��6b   ��6-   �� *Editor.Format.Search+6b   �� 5�      $ Search��6   #��[ 6+   $,��&commands:SearchCommand.FindWordCommand��6O   .��5�      �� $"��/Icons/file-find-outline.png��6   5�      �� 5�      $
 Next��6   $  ��6(   #��[ 67   $��ApplicationCommands.Find��6[   .��5�      �� $��/Icons/arrow-right.png��6   5�      5�      5�      ]� 5�   
   $��2q�6   .+�5�      �� $��Bottom=�6    5�      �� *File.Document+��5�      �� *
FilePath+ �� UpdateSourceTrigger$ PropertyChanged=��� 5�      -   5        $ 
txbContent��5�      $	��Top=�5�      $��5q�5�      " �� VerticalScrollBarVisibility$
 Auto=�5�      $ �� HorizontalScrollBarVisibility$
 Auto=�5�       �� AcceptsReturn .  �� 
AcceptsTab . ���#40454f 5�      �� *Editor+��5�      �� *Format.Family+��5�      �� *Format.Size+��5�      �� *Format.Weight+��5�      �� *Format.Style+ �� TextWrapping 5�      �� *Format.Wrap+��5�      �� *Document.Text+ �� Mode$ TwoWay=�$ PropertyChanged=�.��5�   +    � ContextMenu 5�      �� 5�      .@�5�      m� $	 Cut��6$    5�      �� 5�   "   $��/Icons/content-cut.png��6(   5�      m� 5�      $
 Copy��6#    5�      �� 5�   "   $��/Icons/content-paste.png��6(   5�      m� 5�      $ Paste��6$    5�      �� 5�   "   $��/Icons/content-paste.png��6(   5�      m� 5�      $ 	SelectAll��6$    5�      �� 5�   "   $��/Icons/select-all.png��6(   5�      5�      .��5�   '   5�      5�      5�      5�      