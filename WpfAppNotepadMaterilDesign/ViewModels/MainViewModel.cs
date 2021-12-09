using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using WpfAppNotepadMaterilDesign.Models;

namespace WpfAppNotepadMaterilDesign.ViewModels
{
    public class MainViewModel
    {
        private DocumentModel _document;
        public EditorViewModel Editor { get; set; }
        public FileViewModel File { get; set; }
        public HelpViewModel Help { get; set; }
        public ICommand ExitCommand { get; }


        public MainViewModel()
        {
            _document = new DocumentModel();
            Help = new HelpViewModel();
            Editor = new EditorViewModel(_document);
            File = new FileViewModel(_document);
            ExitCommand = new RelayCommand(ExitWindow);
        }
        public void ExitWindow()
        {
            System.Windows.Application.Current.Shutdown();
        }
    }
}
