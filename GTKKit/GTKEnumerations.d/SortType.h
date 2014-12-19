#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface SortType : OFObject

+ (GtkSortType)ascending;

+ (GtkSortType)descending;

@end
