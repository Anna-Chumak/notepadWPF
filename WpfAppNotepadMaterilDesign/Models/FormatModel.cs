using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;

namespace WpfAppNotepadMaterilDesign.Models
{
    public class FormatModel: ObservableObject
    {
        private FontStyle _style;
        public FontStyle Style
        {
            get { return _style; }
            set { OnPropertyChanged(ref _style, value); }
        }

        private string _search;
        public string Search
        {
            get { return _search; }
            set { OnPropertyChanged(ref _search, value); }
        }

        private FontWeight _weigth;
        public FontWeight Weight
        {
            get { return _weigth; }
            set { OnPropertyChanged(ref _weigth, value); }
        }

        private FontFamily _family;
        public FontFamily Family
        {
            get { return _family; }
            set { OnPropertyChanged(ref _family, value); }
        }

        private bool _isWrapped;
        public bool isWrapped
        {
            get { return _isWrapped; }
            set { OnPropertyChanged(ref _isWrapped, value); }
        }

        private TextWrapping _wrap;
        public TextWrapping Wrap
        {
            get { return _wrap; }
            set { 
                OnPropertyChanged(ref _wrap, value);
                isWrapped = value == TextWrapping.Wrap ? true : false;
            
            }
        }

        private double _size;
        public double Size
        {
            get { return _size; }
            set { OnPropertyChanged(ref _size, value); }
        }
    }
}
