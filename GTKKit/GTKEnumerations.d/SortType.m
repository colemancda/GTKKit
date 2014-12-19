#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation SortType

+ (GtkSortType)ascending {
	return GTK_SORT_ASCENDING;
}

+ (GtkSortType)descending {
	return GTK_SORT_DESCENDING;
}

@end
