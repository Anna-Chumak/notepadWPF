using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using WpfAppNotepadMaterilDesign.Models;

namespace WpfAppNotepadMaterilDesign.ViewModels
{
    public class EditorViewModel
    {
        public ICommand FormatCommand { get; }
        public ICommand WrapCommand { get; }
        public ICommand SearchCommand { get; }

        public FormatModel Format { get; set; }
        public DocumentModel Document { get; set; }
        public string SearchValue { get; set; }
        public int SearchIndex { get; set; }


        public EditorViewModel(DocumentModel document)
        {
            Document = document;

            Format = new FormatModel();
            FormatCommand = new RelayCommand(OpenStyleDialog);
            WrapCommand = new RelayCommand(ToggleWrap);
            SearchCommand = new RelayCommand(Search, CanSearch);
            
        }

        private void OpenStyleDialog()
        {
            var fontDialog = new FormatDialog();
            fontDialog.DataContext = Format;
            fontDialog.ShowDialog();
        }

        private void ToggleWrap()
        {
            if(Format.Wrap == System.Windows.TextWrapping.Wrap)
            {
                Format.Wrap = System.Windows.TextWrapping.NoWrap;
            }
            else
            {
                Format.Wrap = System.Windows.TextWrapping.Wrap;
            }
        }

        private void Search()
        {
            if (Document.Text.Contains(Format.Search))
            {
                if (SearchIndex == 0) {
                    SearchIndex = Document.Text.IndexOf(Format.Search);
                }
                else
                {
                    SearchIndex = Document.Text.IndexOf(Format.Search, SearchIndex);
                }
            }
            else
            {
                SearchIndex = -1;
            }
        }

        private bool CanSearch()
        {
            return string.IsNullOrEmpty(Format.Search);
        }
    }
}
