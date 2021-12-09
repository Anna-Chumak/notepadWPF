using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace WpfAppNotepadMaterilDesign.Commands
{
    class SearchCommand
    {
        public static RoutedUICommand FindWordCommand { get; }
        static SearchCommand()
        {
            InputGestureCollection gestureCollection = new InputGestureCollection();
            gestureCollection.Add(new KeyGesture(Key.Q, ModifierKeys.Control, "Ctrl+F"));

            FindWordCommand = new RoutedUICommand("Find", "Find", typeof(SearchCommand), gestureCollection);
        }
    }
}
