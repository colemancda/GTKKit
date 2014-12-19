#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation SelectionMode 

+ (GtkSelectionMode)none {
	return GTK_SELECTION_NONE;
}

+ (GtkSelectionMode)single {
	return GTK_SELECTION_SINGLE;
}

+ (GtkSelectionMode)browse {
	return GTK_SELECTION_BROWSE;
}

+ (GtkSelectionMode)multiple {
	return GTK_SELECTION_MULTIPLE;
}

@end
