using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfAppNotepadMaterilDesign.ViewModels;

namespace WpfAppNotepadMaterilDesign
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private int _currentSearchIndex;
        private MainViewModel _model;
        public MainWindow()
        {
            _model = new MainViewModel();
            this.DataContext = _model;
            InitializeComponent();
            _currentSearchIndex = -1;
        }
        public void FindWordCommand_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            string text = _model.Editor.Document.Text;
            string search = txbSearch.Text;
            if (text.IndexOf(search) != -1)
            {
                txbContent.Text = text;
                txbContent.SelectionStart = text.IndexOf(search);
                txbContent.SelectionLength = search.Length;
                _currentSearchIndex = text.IndexOf(search)+ search.Length;
            }
        }


        public void FindNext(object sender, ExecutedRoutedEventArgs e)
        {
            string text = _model.Editor.Document.Text;
            string search = txbSearch.Text;
            if (_currentSearchIndex != -1 && text.IndexOf(search, _currentSearchIndex) != -1)
            {
                txbContent.Text = text;
                txbContent.SelectionStart = text.IndexOf(search, _currentSearchIndex);
                txbContent.SelectionLength = search.Length;
                _currentSearchIndex = text.IndexOf(search, _currentSearchIndex) + search.Length;

            }
        }

        private void CommandBinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = !String.IsNullOrWhiteSpace(txbSearch.Text);
        }
    }
}
